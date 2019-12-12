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
#define SPI_READ_FREQ_HZ    1

// UI defines
#define WIDTH           1024
#define HEIGHT          600
#define BORDER_WIDTH    8
#define READ_FONT_SIZE  140
#define SET_FONT_SIZE   100

#define VOLT_COLOR  (Color){  86, 150,  78, 255 }
#define CURR_COLOR  (Color){ 150,  78,  78, 255 }
#define POWE_COLOR  (Color){ 150, 145,  78, 255 }

// These are shared between the SPI and rendering threads.
_Atomic OutputValues set_a;
_Atomic OutputValues set_b;

_Atomic InputValues read_a;
_Atomic InputValues read_b;

void *spiThread(void *thread_data)
{
#ifdef PLATFORM_RPI
    printf("Resetting regulators\n");
    wiringPiSetupGpio();
    pullUpDnControl(MISO_PIN, PUD_UP);
    pinMode(RESET_A_PIN, OUTPUT);
    pinMode(RESET_B_PIN, OUTPUT);

    digitalWrite(RESET_A_PIN, 0);
    digitalWrite(RESET_B_PIN, 0);
    usleep(1000000);
    digitalWrite(RESET_A_PIN, 1);
    digitalWrite(RESET_B_PIN, 1);
    usleep(100000);

    int err = initializeSPI();
    if (!err) {

        while (1)
        {

            OutputValues tmp = atomic_load(&set_a);
            tmp.voltage += 1;
            tmp.current += 4;
            printf("Writing 0x%04x 0x%04x\n", tmp.voltage, tmp.current);
            atomic_store(&set_a, tmp);
            atomic_store(&read_a, readWriteSPI(CHANNEL_A, atomic_load(&set_a)));
            //atomic_store(&read_b, readWriteSPI(CHANNEL_B, atomic_load(&set_b)));

            tmp = atomic_load(&read_a);
            printf("Read    0x%04x 0x%04x\n", tmp.voltage, tmp.current);
            usleep(1000000 / SPI_READ_FREQ_HZ);
        }

    } else {
        printf("Failed to initiazlie SPI: %s\n", strerror(err));
    }
#endif
    return NULL;
}

int main(void)
{
    OutputValues zero = { 0, 0 };
    atomic_store(&set_a, zero);
    atomic_store(&set_b, zero);
    atomic_store(&read_a, zero);
    atomic_store(&read_b, zero);

    printf("Starting thread\n");
    pthread_t spi_thread;
    pthread_create(&spi_thread, NULL, spiThread, NULL);

    InitWindow(WIDTH, HEIGHT, "lab power supply");
    SetTargetFPS(30);

    Font font = LoadFontEx("droid-sans-mono/droid-sans-mono.ttf", READ_FONT_SIZE, NULL, 0);
    char text_fmt_buf[1024];

    // TODO Add proper calibration values
    float volt_to_flt = 2.048f / (1 << 12) * (1.3f + 17.3f) / 1.3f;
    float curr_to_flt = 2.048f / (1 << 12) / (20 * 0.033f);

    bool cursor_on_voltage = true;

    while (!WindowShouldClose())
    {
        OutputValues tmp_set_a = atomic_load(&set_a);
        OutputValues tmp_set_b = atomic_load(&set_b);

        // These two ifs need to be cleaned up
        if (IsKeyPressed(KEY_UP)) {
            if (cursor_on_voltage)
                tmp_set_a.voltage += 0.2f / volt_to_flt; // Adjust 200mV
            else
                tmp_set_a.current += 0.02f / curr_to_flt; // Adjust 20mA

            atomic_store(&set_a, tmp_set_a);
        }
        if (IsKeyPressed(KEY_DOWN)) {
            if (cursor_on_voltage)
                tmp_set_a.voltage -= 0.2f / volt_to_flt; // Adjust 200mV
            else
                tmp_set_a.current -= 0.02f / curr_to_flt; // Adjust 20mA

            atomic_store(&set_a, tmp_set_a);
        }
        if (IsKeyPressed(KEY_M)) {
            cursor_on_voltage = !cursor_on_voltage;
        }

        tmp_set_a.voltage &= 0x0FFF;
        tmp_set_a.current &= 0x0FFF;
        tmp_set_b.voltage &= 0x0FFF;
        tmp_set_b.current &= 0x0FFF;
        InputValues tmp_read_a = atomic_load(&read_a);
        InputValues tmp_read_b = atomic_load(&read_b);

        BeginDrawing();
            ClearBackground(DARKGRAY);

            DrawRectangle(BORDER_WIDTH, BORDER_WIDTH,
                          WIDTH/2-BORDER_WIDTH*3/2, HEIGHT-BORDER_WIDTH*2, BLACK);
            DrawRectangle(WIDTH/2+BORDER_WIDTH/2, BORDER_WIDTH,
                          WIDTH/2-BORDER_WIDTH*3/2, HEIGHT-BORDER_WIDTH*2, BLACK);

            Vector2 tmp_pos;
            #define DRAW_TEXT(xpos, ypos, font_size, font_color, format, ...)                                 \
            snprintf(text_fmt_buf, sizeof(text_fmt_buf), format, __VA_ARGS__);                          \
            tmp_pos.x = xpos-MeasureTextEx(font, text_fmt_buf, font_size, 1).x;                            \
            tmp_pos.y = ypos;                                                                              \
            DrawTextEx(font, text_fmt_buf, tmp_pos, font_size, 1, font_color);

            DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-36,   0.f, READ_FONT_SIZE, VOLT_COLOR, "%.3fV", volt_to_flt * tmp_read_a.voltage);
            DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-45, 120.f,  SET_FONT_SIZE, VOLT_COLOR, "%.3fV", volt_to_flt * tmp_set_a.voltage);
            DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-36, 230.f, READ_FONT_SIZE, CURR_COLOR, "%.3fA", curr_to_flt * tmp_read_a.current);
            DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-45, 350.f,  SET_FONT_SIZE, CURR_COLOR, "%.3fA", curr_to_flt * tmp_set_a.current);

            DRAW_TEXT(WIDTH/2.f+BORDER_WIDTH/2-45, 480.f,  SET_FONT_SIZE, POWE_COLOR, "%.3fW", volt_to_flt * tmp_read_a.voltage * curr_to_flt * tmp_read_a.current);

            DRAW_TEXT(WIDTH-36,   0.f, READ_FONT_SIZE, VOLT_COLOR, "%.3fV", volt_to_flt * tmp_read_b.voltage);
            DRAW_TEXT(WIDTH-45, 120.f,  SET_FONT_SIZE, VOLT_COLOR, "%.3fV", volt_to_flt * tmp_set_b.voltage);
            DRAW_TEXT(WIDTH-36, 230.f, READ_FONT_SIZE, CURR_COLOR, "%.3fA", curr_to_flt * tmp_read_b.current);
            DRAW_TEXT(WIDTH-45, 350.f,  SET_FONT_SIZE, CURR_COLOR, "%.3fA", curr_to_flt * tmp_set_b.current);

            DRAW_TEXT(WIDTH-45, 480.f,  SET_FONT_SIZE, POWE_COLOR, "%.3fW", volt_to_flt * tmp_read_a.voltage * curr_to_flt * tmp_read_a.current);
            #undef DRAW_TEXT

        EndDrawing();
    }

    CloseWindow();

    return 0;
}