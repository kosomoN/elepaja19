#include "constants.h"
#include "spi_comms.h"

#include <pthread.h>
#include <raylib.h>
#include <stdio.h>
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
#define atomic_store(dest, src) *(dest) = src
#define atomic_load(src) *(src)
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

_Atomic InputValues read_a;
_Atomic InputValues read_b;

// TODO Add proper calibration values
const float set_volt_to_flt = 2.048f / (1 << 12) * (1.3f + 17.3f) / 1.3f;
const float set_curr_to_flt = 2.048f / (1 << 12) / (20 * 0.033f);
const float read_volt_to_flt = 2.048f / (1 << 13) * (1.3f + 17.3f) / 1.3f;
const float read_curr_to_flt = 2.048f / (1 << 13) / (20 * 0.033f);

void *spi_thread_f(void *thread_data)
{
#ifdef PLATFORM_RPI
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
                last_write = millis();
            }
            usleep(10000);
        }

    } else {
        printf("Failed to initialize SPI: %s\n", strerror(err));
    }
#endif
    return NULL;
}

int main(void)
{
    printf("Initializing window\n");
    InitWindow(WIDTH, HEIGHT, "lab power supply");
    SetTargetFPS(30);

    printf("Loading font\n");
    Font font = LoadFontEx("droid-sans-mono/droid-sans-mono-stripped.ttf", READ_FONT_SIZE, NULL, 0);
    char text_fmt_buf[1024];

    bool cursor_on_voltage = true;

    OutputValues zero = { 0, 0 };
    atomic_store(&set_a, zero);
    atomic_store(&set_b, zero);
    atomic_store(&read_a, zero);
    atomic_store(&read_b, zero);

    printf("Starting thread\n");
    pthread_t spi_thread;
    pthread_create(&spi_thread, NULL, spi_thread_f, NULL);

    printf("Entering main loop\n");
    while (!WindowShouldClose())
    {
        OutputValues tmp_set_a = atomic_load(&set_a);
        OutputValues tmp_set_b = atomic_load(&set_b);

        int key_pressed;
        while ((key_pressed = GetKeyPressed()) != 0) {
            switch (key_pressed) {
            case KEY_UP:
                if (cursor_on_voltage)
                    tmp_set_a.voltage += 0.2f / set_volt_to_flt; // Adjust 200mV
                else
                    tmp_set_a.current += 0.02f / set_curr_to_flt; // Adjust 20mA

                tmp_set_a.voltage &= 0x0FFF;
                atomic_store(&set_a, tmp_set_a);
                break;
            case KEY_DOWN:
                if (cursor_on_voltage)
                    tmp_set_a.voltage -= 0.2f / set_volt_to_flt; // Adjust 200mV
                else
                    tmp_set_a.current -= 0.02f / set_curr_to_flt; // Adjust 20mA

                tmp_set_a.current &= 0x0FFF;
                atomic_store(&set_a, tmp_set_a);
                break;
            case KEY_M:
                cursor_on_voltage = !cursor_on_voltage;
                break;
            case KEY_B:
                a_enabled = !a_enabled;
                break;
            case KEY_A:
                b_enabled = !b_enabled;
                break;
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
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-36,   0.f, READ_FONT_SIZE, VOLT_COLOR, "%.3fV", read_volt_to_flt * tmp_read_a.voltage);
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-36, 230.f, READ_FONT_SIZE, CURR_COLOR, "%.3fA", read_curr_to_flt * tmp_read_a.current);
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-45, 480.f,  SET_FONT_SIZE, POWE_COLOR, "%.3fW", read_volt_to_flt * tmp_read_a.voltage * read_curr_to_flt * tmp_read_a.current);
            } else {
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-36,   0.f, READ_FONT_SIZE, OFF_COLOR, "%.3fV", 0.f);
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-36, 230.f, READ_FONT_SIZE, OFF_COLOR, "%.3fA", 0.f);
                DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-45, 480.f,  SET_FONT_SIZE, OFF_COLOR, "%.3fW", 0.f);
            }

            DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-45, 120.f,  SET_FONT_SIZE, cursor_on_voltage ? VOLT_SELECTED_COLOR : VOLT_COLOR, "%.3fV", set_volt_to_flt * tmp_set_a.voltage);
            DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-45, 350.f,  SET_FONT_SIZE, cursor_on_voltage ? CURR_COLOR : CURR_SELECTED_COLOR, "%.3fA", set_curr_to_flt * tmp_set_a.current);

            if (b_enabled) {
                DRAW_TEXT(WIDTH-36,   0.f, READ_FONT_SIZE, VOLT_COLOR, "%.3fV", read_volt_to_flt * tmp_read_b.voltage);
                DRAW_TEXT(WIDTH-36, 230.f, READ_FONT_SIZE, CURR_COLOR, "%.3fA", read_curr_to_flt * tmp_read_b.current);
                DRAW_TEXT(WIDTH-45, 480.f,  SET_FONT_SIZE, POWE_COLOR, "%.3fW", read_volt_to_flt * tmp_read_a.voltage * read_curr_to_flt * tmp_read_a.current);
            } else {
                DRAW_TEXT(WIDTH-36,   0.f, READ_FONT_SIZE, OFF_COLOR, "%.3fV", 0.f);
                DRAW_TEXT(WIDTH-36, 230.f, READ_FONT_SIZE, OFF_COLOR, "%.3fA", 0.f);
                DRAW_TEXT(WIDTH-45, 480.f,  SET_FONT_SIZE, OFF_COLOR, "%.3fW", 0.f);
            }

            DRAW_TEXT(WIDTH-45, 120.f,  SET_FONT_SIZE, VOLT_COLOR, "%.3fV", set_volt_to_flt * tmp_set_b.voltage);
            DRAW_TEXT(WIDTH-45, 350.f,  SET_FONT_SIZE, CURR_COLOR, "%.3fA", set_curr_to_flt * tmp_set_b.current);

            #undef DRAW_TEXT

        EndDrawing();
    }

    CloseWindow();

    return 0;
}