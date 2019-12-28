#include "constants.h"
#include "keymap.h"
#include "spi_comms.h"

#include <errno.h>
#include <pthread.h>
#include <raylib.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

#ifdef PLATFORM_RPI
#include <wiringPi.h>
#include <stdatomic.h>
#else
// Add dummy defines for now to work around old compilers that doesn't have stdatomic.
// Threading isn't used anyway as the SPI connection is only available on RPI.
#define _Atomic
#define atomic_store(dest, src) (*(dest) = src)
#define atomic_load(src) (*(src))
#endif

// How often the MCUs should be queried for ADC data.
#if DEBUG_SPI
#define SPI_READ_FREQ_HZ    1
#else
#define SPI_READ_FREQ_HZ    15
#endif
#define SPI_READ_PERIOD_MS  1000 / SPI_READ_FREQ_HZ

// UI defines
#define WIDTH           1024
#define HEIGHT          600
#define BORDER_WIDTH    8
#define READ_FONT_SIZE  140
#define SET_FONT_SIZE   100
#define INFO_TEXT_SIZE  32

#define VOLT_COLOR              (Color){  86, 150,  78, 255 }
#define VOLT_SELECTED_COLOR     (Color){  86*3/2, 150*3/2,  78*3/2, 255 }
#define CURR_COLOR              (Color){ 150,  78,  78, 255 }
#define CURR_SELECTED_COLOR     (Color){ 150*3/2,  78*3/2,  78*3/2, 255 }
#define POWE_COLOR              (Color){ 150, 145,  78, 255 }
#define OFF_COLOR               DARKGRAY

// These are shared between the SPI and rendering threads.
_Atomic OutputValues set_a;
_Atomic OutputValues set_b;
_Atomic bool a_enabled = false;
_Atomic bool b_enabled = false;
// Will be set to true every time a new reading has been received
_Atomic bool new_adc_res_flag = false;

_Atomic InputValues read_a;
_Atomic InputValues read_b;

typedef struct {
    double scale;
    double offset; // Offset is added before scaling
} ScaleOffset;

// TODO calibrate both channels independently
// Default calibration values
// 2.048V reference, 12 bits (excluding sign bit), voltage divider with 1.3k and 17.3k ohm
ScaleOffset set_volt_to_d = { 2.048 / (1 << 12) * (1.3 + 17.3) / 1.3, 0};
ScaleOffset read_volt_to_d = { 2.048 / (1 << 13) * (1.3 + 17.3) / 1.3, 0 };

// 2.048V reference, 13 bits (excluding sign bit), 20 gain and 0.033ohm current sense resistor
ScaleOffset set_curr_to_d = { 2.048 / (1 << 12) / (20 * 0.033), 0 };
ScaleOffset read_curr_to_d = { 2.048 / (1 << 13) / (20 * 0.033), 0 };

#define SET_CURR_TO_D(x) ((x - set_curr_to_d.offset) * set_curr_to_d.scale)
#define SET_VOLT_TO_D(x) ((x - set_volt_to_d.offset) * set_volt_to_d.scale)
#define READ_CURR_TO_D(x) ((x - read_curr_to_d.offset) * read_curr_to_d.scale)
#define READ_VOLT_TO_D(x) ((x - read_volt_to_d.offset) * read_volt_to_d.scale)

// The values to write to the DAC when calibrating
// About one volt
#define CAL_VOLT_POINT_ONE_DAC 140
// About 19 volts
#define CAL_VOLT_POINT_TWO_DAC 2650

typedef struct {
    uint16_t    current_zero_adc,
                current_second_adc,
                current_second_dac;
    double      current_second_measured;

    uint16_t    voltage_first_adc,
                voltage_first_dac,
                voltage_second_adc,
                voltage_second_dac;
    double      voltage_first_measured,
                voltage_second_measured;
} CalibrationValues;

CalibrationValues cal_values_a, cal_values_b;

typedef enum {
    UI_STANDARD,           // Standard UI state with channel overviews
    UI_INPUT_VALUE,        // User is inputting numbers for voltage or current
    UI_CAL_SECOND_CURR,    // Setting second current calibration points,
                           // zero is done automatically by disconnecting the relay
    UI_CAL_PROMPT_DISCONNECT,   // User is being showed a prompt to disconnect load
                                // for voltage measurements.
    UI_CAL_FIRST_VOLT,     // Setting first voltage calibration point
    UI_CAL_SECOND_VOLT     // Setting second voltage calibration point
} ui_state_t;

ui_state_t ui_state = UI_STANDARD;

#define USER_IN_BUF_LEN 256
char user_in_buf[USER_IN_BUF_LEN];

#ifdef PLATFORM_RPI
void *spi_thread_f(void *thread_data)
{
    printf("Resetting regulators\n");
    wiringPiSetupGpio();
    pullUpDnControl(MISO_PIN, PUD_UP);
    pinMode(RESET_A_PIN, OUTPUT);
    pinMode(RESET_B_PIN, OUTPUT);
    pinMode(RELAY_A_PIN, OUTPUT);
    pinMode(RELAY_B_PIN, OUTPUT);
    digitalWrite(RELAY_A_PIN, 0);
    digitalWrite(RELAY_B_PIN, 0);

    digitalWrite(RESET_A_PIN, 0);
    digitalWrite(RESET_B_PIN, 0);
    usleep(1000000);
    digitalWrite(RESET_A_PIN, 1);
    digitalWrite(RESET_B_PIN, 1);
    usleep(100000);

    int err = initializeSPI();
    if (!err) {

        bool last_a_enabled = false;
        bool last_b_enabled = false;
        unsigned int last_write = millis();
        while (1)
        {
            // Toggle relays if needed
            if (atomic_load(&a_enabled) != last_a_enabled) {
                last_a_enabled = !last_a_enabled;
                digitalWrite(RELAY_A_PIN, last_a_enabled);
            }

            if (atomic_load(&b_enabled) != last_b_enabled) {
                last_b_enabled = !last_b_enabled;
                digitalWrite(RELAY_B_PIN, last_b_enabled);
            }

            if (millis() - last_write > SPI_READ_PERIOD_MS) {
#if DEBUG_SPI
                OutputValues tmp = atomic_load(&set_a);
                printf("Writing 0x%04x 0x%04x\n", tmp.voltage, tmp.current);
#endif
                atomic_store(&read_a, readWriteSPI(CHANNEL_A, atomic_load(&set_a)));
                atomic_store(&read_b, readWriteSPI(CHANNEL_B, atomic_load(&set_b)));
#if DEBUG_SPI
                tmp = atomic_load(&read_a);
                printf("Read    0x%04x 0x%04x\n", tmp.voltage, tmp.current);
#endif
                atomic_store(&new_adc_res_flag, true);
                last_write = millis();
            }
            usleep(10000);
        }

    } else {
        printf("Failed to initialize SPI: %s\n", strerror(err));
    }
    return NULL;
}
#endif

void read_config(void)
{
    printf("Reading config\n");

    FILE *f = fopen("/home/pi/lab_cal_values", "r");
    if (!f) {
        printf("Failed to open config file for reading.\n");
        return;
    }

    ScaleOffset sv, sc, rv, rc;
    if (fscanf(f, "%lf,%lf,%lf,%lf",
               &sv.scale, &sv.offset,
               &sc.scale, &sc.offset ) != 4) {
        printf("Failed to read calibration values.\n");
    } else if (fscanf(f, "%lf,%lf,%lf,%lf",
               &rv.scale, &rv.offset,
               &rc.scale, &rc.offset ) != 4) {
        printf("Failed to read calibration values.\n");
    } else {
        set_volt_to_d = sv;
        set_curr_to_d = sc;
        read_volt_to_d = rv;
        read_curr_to_d = rc;
    }

    (void)fclose(f);
}

void set_calibration_values(CalibrationValues *cal_a, CalibrationValues *cal_b)
{
    cal_values_a = *cal_a;
    cal_values_b = *cal_b;

    read_curr_to_d.offset = -cal_values_a.current_zero_adc;
    read_curr_to_d.scale = cal_values_a.current_second_measured / (cal_values_a.current_second_adc - cal_values_a.current_zero_adc);
    set_curr_to_d.offset = 0;
    set_curr_to_d.scale  = cal_values_a.current_second_measured / (cal_values_a.current_second_dac);

    // Two point calibration derivation:
    // calibrated_value = (read_value - read_low) * reference_range / read_range + reference_low
    // calibrated_value = (read_value + (-read_low + reference_low * read_range / reference_range)) * reference_range / read_range
    //
    // offset = -read_low + reference_low * read_range / reference_range
    // scale  =  reference_range / read_range

    const double measured_range = cal_values_a.voltage_second_measured - cal_values_a.voltage_first_measured;
    const uint16_t adc_range    = cal_values_a.voltage_second_adc - cal_values_a.voltage_first_adc;
    const uint16_t dac_range    = CAL_VOLT_POINT_TWO_DAC - CAL_VOLT_POINT_ONE_DAC;

    read_volt_to_d.offset = -cal_values_a.voltage_first_adc + cal_values_a.voltage_first_measured * adc_range / measured_range;
    read_volt_to_d.scale  = measured_range / adc_range;

    set_volt_to_d.offset = -cal_values_a.voltage_first_dac + cal_values_a.voltage_first_measured * dac_range / measured_range;
    set_volt_to_d.scale  = measured_range / dac_range;

    FILE *f = fopen("/home/pi/lab_cal_values", "w");
    if (!f) {
        printf("Failed to open file for writing.\n");
        return;
    }

    if (fprintf(f, "%lf,%lf,%lf,%lf\n%lf,%lf,%lf,%lf",
                set_volt_to_d.scale, set_volt_to_d.offset,
                set_curr_to_d.scale, set_curr_to_d.offset,
                read_volt_to_d.scale, read_volt_to_d.offset,
                read_curr_to_d.scale, read_curr_to_d.offset) > 0) {
        printf("Failed to write calibration values.\n");
    }

    (void)fclose(f);
}

// Starts the calibration if current_state == UI_STANDARD
ui_state_t perform_cal_step(ui_state_t current_state, CalibrationValues *cal_a, CalibrationValues *cal_b)
{
    switch (current_state) {
    case UI_STANDARD:
    {
        // Turn off relay and wait until its properly open
        atomic_store(&a_enabled, false);
        usleep(500000);
        atomic_store(&new_adc_res_flag, false);
        while (!atomic_load(&new_adc_res_flag)) { }

        cal_a->current_zero_adc = atomic_load(&read_a).current;
        atomic_store(&a_enabled, true);
        return UI_CAL_SECOND_CURR;
    }
    case UI_CAL_SECOND_CURR:
    {
        double input = strtod(user_in_buf, NULL);
        if (input <= 0 || input > MAX_CURRENT_A) {
            printf("Input out of bounds!\n");
            return UI_CAL_SECOND_CURR;
        }
        cal_a->current_second_measured = input;

        atomic_store(&new_adc_res_flag, false);
        while (!atomic_load(&new_adc_res_flag)) { }
        cal_a->current_second_adc = atomic_load(&read_a).current;
        cal_a->current_second_dac = atomic_load(&set_a).current;
        atomic_store(&set_a, ((OutputValues) { CAL_VOLT_POINT_ONE_DAC, 100 }));
        return UI_CAL_PROMPT_DISCONNECT;
    }
    case UI_CAL_PROMPT_DISCONNECT:
    {
        return UI_CAL_FIRST_VOLT;
    }
    case UI_CAL_FIRST_VOLT:
    {
        double input = strtod(user_in_buf, NULL);
        if (input <= 0 || input > MAX_VOLTAGE_V) {
            printf("Input out of bounds!\n");
            return UI_CAL_FIRST_VOLT;
        }
        cal_a->voltage_first_measured = input;

        atomic_store(&new_adc_res_flag, false);
        while (!atomic_load(&new_adc_res_flag)) { }
        cal_a->voltage_first_adc = atomic_load(&read_a).voltage;
        cal_a->voltage_first_dac = atomic_load(&set_a).voltage;

        atomic_store(&set_a, ((OutputValues) { CAL_VOLT_POINT_TWO_DAC, 100 }));
        return UI_CAL_SECOND_VOLT;
    }
    case UI_CAL_SECOND_VOLT:
    {
        double input = strtod(user_in_buf, NULL);
        if (input <= 0 || input > MAX_VOLTAGE_V) {
            printf("Input out of bounds!\n");
            return UI_CAL_SECOND_VOLT;
        }
        cal_a->voltage_second_measured = input;

        atomic_store(&new_adc_res_flag, false);
        while (!atomic_load(&new_adc_res_flag)) { }
        cal_a->voltage_second_adc = atomic_load(&read_a).voltage;
        cal_a->voltage_second_dac = atomic_load(&set_a).voltage;

        set_calibration_values(cal_a, cal_b);
        atomic_store(&set_a, ((OutputValues) { 0, 0 }));
        return UI_STANDARD;
    }
    default:
        return current_state;
    }
}

int main(void)
{
    read_config();

    printf("Initializing window\n");
    InitWindow(WIDTH, HEIGHT, "lab power supply");
    SetTargetFPS(30);

    printf("Loading font\n");
    Font font = LoadFontEx("droid-sans-mono/droid-sans-mono-stripped.ttf", READ_FONT_SIZE, NULL, 0);
    char text_fmt_buf[1024];

    // Calibration values filled while the calibration is in progress
    CalibrationValues cal_a_tmp,
                      cal_b_tmp;
    user_in_buf[0] = '\0';

    bool cursor_on_voltage = true;

    OutputValues zero = { 0, 0 };
    atomic_store(&set_a, zero);
    atomic_store(&set_b, zero);
    atomic_store(&read_a, zero);
    atomic_store(&read_b, zero);

#ifdef PLATFORM_RPI
    printf("Starting thread\n");
    pthread_t spi_thread;
    pthread_create(&spi_thread, NULL, spi_thread_f, NULL);
#endif

    printf("Entering main loop\n");
    while (!WindowShouldClose())
    {
        OutputValues tmp_set_a = atomic_load(&set_a);
        OutputValues tmp_set_b = atomic_load(&set_b);

        int key_pressed;
        while ((key_pressed = GetKeyPressed()) != 0) {
            if (ui_state == UI_STANDARD) {
                switch (key_pressed) {
                case UIK_ENCODER_CW:
                    if (cursor_on_voltage)
                        tmp_set_a.voltage += 10;
                    else
                        tmp_set_a.current += 10;

                    tmp_set_a.voltage &= 0x0FFF;
                    tmp_set_a.current &= 0x0FFF;
                    atomic_store(&set_a, tmp_set_a);
                    break;
                case UIK_ENCODER_CCW:
                    if (cursor_on_voltage)
                        tmp_set_a.voltage -= 10;
                    else
                        tmp_set_a.current -= 10;

                    tmp_set_a.voltage &= 0x0FFF;
                    tmp_set_a.current &= 0x0FFF;
                    atomic_store(&set_a, tmp_set_a);
                    break;
                case UIK_ENCODER_PRESS:
                    cursor_on_voltage = !cursor_on_voltage;
                    break;
                case UIK_A_TOGGLE:
                    a_enabled = !a_enabled;
                    break;
                case UIK_B_TOGGLE:
                    b_enabled = !b_enabled;
                    break;
                case UIK_UI1:
                    // Start calibration
                    user_in_buf[0] = '\0';
                    ui_state = perform_cal_step(ui_state, &cal_a_tmp, &cal_b_tmp);
                    break;
                }
            } else if (ui_state == UI_CAL_SECOND_CURR ||
                       ui_state == UI_CAL_FIRST_VOLT ||
                       ui_state == UI_CAL_SECOND_VOLT) {
                switch (key_pressed) {
                case UIK_UI1:
                    ui_state = perform_cal_step(ui_state, &cal_a_tmp, &cal_b_tmp);
                    user_in_buf[0] = '\0';
                    break;
                case UIK_UI2:
                    // Cancel calibration
                    ui_state = UI_STANDARD;
                    break;
                case UIK_DOT:
                    // Check for existing dot
                    if (strlen(user_in_buf) < USER_IN_BUF_LEN-1 &&
                        strstr(user_in_buf, ".") == NULL)
                        strcat(user_in_buf, ".");
                    break;
                #define NUMBER_KEY(num)                             \
                case UIK_ ## num:                               \
                    if (strlen(user_in_buf) < USER_IN_BUF_LEN-1)    \
                        strcat(user_in_buf, #num);                  \
                    break;
                    NUMBER_KEY(0)
                    NUMBER_KEY(1)
                    NUMBER_KEY(2)
                    NUMBER_KEY(3)
                    NUMBER_KEY(4)
                    NUMBER_KEY(5)
                    NUMBER_KEY(6)
                    NUMBER_KEY(7)
                    NUMBER_KEY(8)
                    NUMBER_KEY(9)
                #undef NUMBER_KEY
                }
            } else if (ui_state == UI_CAL_PROMPT_DISCONNECT) {
                switch (key_pressed) {
                case UIK_UI1:
                    ui_state = perform_cal_step(ui_state, &cal_a_tmp, &cal_b_tmp);
                    user_in_buf[0] = '\0';
                    break;
                case UIK_UI2:
                    // Cancel calibration
                    ui_state = UI_STANDARD;
                    break;
                }
            }
        }

        InputValues tmp_read_a = atomic_load(&read_a);
        InputValues tmp_read_b = atomic_load(&read_b);

        BeginDrawing();
            ClearBackground(DARKGRAY);

            DrawRectangle(BORDER_WIDTH, BORDER_WIDTH,
                          WIDTH/2-BORDER_WIDTH*3/2, HEIGHT-BORDER_WIDTH*2, BLACK);
            DrawRectangle(WIDTH/2+BORDER_WIDTH/2, BORDER_WIDTH,
                          WIDTH/2-BORDER_WIDTH*3/2, HEIGHT-BORDER_WIDTH*2, BLACK);

            Vector2 tmp_pos;
            #define DRAW_TEXT(xpos, ypos, font_size, font_color, format, ...)   \
            snprintf(text_fmt_buf, sizeof(text_fmt_buf), format, __VA_ARGS__);  \
            tmp_pos.x = xpos-MeasureTextEx(font, text_fmt_buf, font_size, 1).x; \
            tmp_pos.y = ypos;                                                   \
            DrawTextEx(font, text_fmt_buf, tmp_pos, font_size, 1, font_color);

            if (a_enabled) {
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-36,   0.f, READ_FONT_SIZE, VOLT_COLOR, "%.3fV", READ_VOLT_TO_D(tmp_read_a.voltage));
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-36, 230.f, READ_FONT_SIZE, CURR_COLOR, "%.3fA", READ_CURR_TO_D(tmp_read_a.current));
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-45, 480.f,  SET_FONT_SIZE, POWE_COLOR, "%.3fW", READ_VOLT_TO_D(tmp_read_a.voltage) * READ_CURR_TO_D(tmp_read_a.current));
            } else {
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-36,   0.f, READ_FONT_SIZE, OFF_COLOR, "%.3fV", 0.0);
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-36, 230.f, READ_FONT_SIZE, OFF_COLOR, "%.3fA", 0.0);
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-45, 480.f,  SET_FONT_SIZE, OFF_COLOR, "%.3fW", 0.0);
            }

            DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-45, 120.f,  SET_FONT_SIZE, cursor_on_voltage ? VOLT_SELECTED_COLOR : VOLT_COLOR, "%.3fV", SET_VOLT_TO_D(tmp_set_a.voltage));
            DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-45, 350.f,  SET_FONT_SIZE, cursor_on_voltage ? CURR_COLOR : CURR_SELECTED_COLOR, "%.3fA", SET_CURR_TO_D(tmp_set_a.current));

            if (b_enabled) {
                DRAW_TEXT(WIDTH-36,   0.f, READ_FONT_SIZE, VOLT_COLOR, "%.3fV", READ_VOLT_TO_D(tmp_read_b.voltage));
                DRAW_TEXT(WIDTH-36, 230.f, READ_FONT_SIZE, CURR_COLOR, "%.3fA", READ_CURR_TO_D(tmp_read_b.current));
                DRAW_TEXT(WIDTH-45, 480.f,  SET_FONT_SIZE, POWE_COLOR, "%.3fW", READ_VOLT_TO_D(tmp_read_b.voltage) * READ_CURR_TO_D(tmp_read_b.current));
            } else {
                DRAW_TEXT(WIDTH-36,   0.f, READ_FONT_SIZE, OFF_COLOR, "%.3fV", 0.0);
                DRAW_TEXT(WIDTH-36, 230.f, READ_FONT_SIZE, OFF_COLOR, "%.3fA", 0.0);
                DRAW_TEXT(WIDTH-45, 480.f,  SET_FONT_SIZE, OFF_COLOR, "%.3fW", 0.0);
            }

            DRAW_TEXT(WIDTH-45, 120.f,  SET_FONT_SIZE, VOLT_COLOR, "%.3fV", SET_VOLT_TO_D(tmp_set_b.voltage));
            DRAW_TEXT(WIDTH-45, 350.f,  SET_FONT_SIZE, CURR_COLOR, "%.3fA", SET_CURR_TO_D(tmp_set_b.current));

            if (ui_state == UI_CAL_SECOND_CURR ||
                ui_state == UI_CAL_PROMPT_DISCONNECT ||
                ui_state == UI_CAL_FIRST_VOLT ||
                ui_state == UI_CAL_SECOND_VOLT) {
                DrawRectangle(0, 0, WIDTH, HEIGHT, (Color) {0, 0, 0, 128});
            }

            switch (ui_state) {
            case UI_STANDARD:
                // Don't do anything extra
                break;
            case UI_INPUT_VALUE:
                break;
            case UI_CAL_SECOND_CURR:
                DrawTextEx(font, "Draw as much current as possible in constant current mode,\nand enter the measured current", (Vector2) {0, HEIGHT/2}, INFO_TEXT_SIZE, 1, WHITE);
                break;
            case UI_CAL_PROMPT_DISCONNECT:
                DrawTextEx(font, "Please disconnect load in preparation of voltage calibration", (Vector2) {0, HEIGHT/2}, INFO_TEXT_SIZE, 1, WHITE);
                break;
            case UI_CAL_FIRST_VOLT:
                DrawTextEx(font, "First voltage calibration point: Enter the measured voltage", (Vector2) {0, HEIGHT/2}, INFO_TEXT_SIZE, 1, WHITE);
                break;
            case UI_CAL_SECOND_VOLT:
                DrawTextEx(font, "Second voltage calibration point: Enter the measured voltage", (Vector2) {0, HEIGHT/2}, INFO_TEXT_SIZE, 1, WHITE);
                break;
            }

            if (ui_state == UI_CAL_SECOND_CURR ||
                ui_state == UI_CAL_FIRST_VOLT ||
                ui_state == UI_CAL_SECOND_VOLT) {
                DrawTextEx(font, user_in_buf, (Vector2) {WIDTH/2-MeasureTextEx(font, user_in_buf, INFO_TEXT_SIZE, 1).x, HEIGHT/2+INFO_TEXT_SIZE*3+12}, INFO_TEXT_SIZE, 1, WHITE);
            }

            #undef DRAW_TEXT

        EndDrawing();
    }

    CloseWindow();

    return 0;
}