#include "spi_comms.h"

#include <raylib.h>
#include <pthread.h>
#include <unistd.h>
#ifdef PLATFORM_RPI
#include <stdatomic.h>
#else
// Add dummy defines for now to work around old compilers that doesn't have stdatomic.
// Threading isn't used anyway as the SPI connection is only available on RPI.
#define _Atomic
#define atomic_store(dest, src) *(dest) = src
#define atomic_load(src) *(src)
#endif
#include <stdio.h>

// How often the MCUs should be queried for ADC data.
#define SPI_READ_FREQ_HZ 10

// These are shared between the SPI and rendering threads.
_Atomic OutputValues set_a;
_Atomic OutputValues set_b;

_Atomic InputValues read_a;
_Atomic InputValues read_b;

void *spiThread(void *thread_data)
{
    // SPI is only available on RPI
    #ifdef PLATFORM_RPI
    while (1)
    {
        atomic_store(&read_a, readWriteSPI(CHANNEL_A, atomic_load(&set_a)));
        atomic_store(&read_b, readWriteSPI(CHANNEL_B, atomic_load(&set_b)));
        usleep(1000000 / SPI_READ_FREQ_HZ);
    }
    #endif
    return NULL;
}

int main(void)
{
    pthread_t spi_thread;
    pthread_create(&spi_thread, NULL, spiThread, NULL);

    const int screenWidth = 800;
    const int screenHeight = 450;
    InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window");
    SetTargetFPS(30);

    Font font = LoadFontEx("SourceCodePro/SourceCodePro-Regular.ttf", 96, NULL, 0);
    char text_fmt_buf[1024];

    // TODO Add proper calibration values
    float volt_to_flt = (1.3f + 17.3f) / 1.3f * 2.048f / (1 << 14);
    float curr_to_flt = (2.048f / (1 << 14)) / (20 * 0.033f);

    // Main game loop
    while (!WindowShouldClose())    // Detect window close button or ESC key
    {
        BeginDrawing();
            ClearBackground(RAYWHITE);
            InputValues tmp_read_a = atomic_load(&read_a);
            InputValues tmp_read_b = atomic_load(&read_b);

            Vector2 tmp_pos = { 50, 100 };
            snprintf(text_fmt_buf, sizeof(text_fmt_buf), "%.3fV %.3fA",
                     volt_to_flt * tmp_read_a.voltage,
                     curr_to_flt * tmp_read_a.current);
            DrawTextEx(font, text_fmt_buf, tmp_pos, 96, 1, LIGHTGRAY);

            tmp_pos.y = 200;
            snprintf(text_fmt_buf, sizeof(text_fmt_buf), "%.3fV %.3fA",
                     volt_to_flt * tmp_read_b.voltage,
                     curr_to_flt * tmp_read_b.current);
            DrawTextEx(font, text_fmt_buf, tmp_pos, 96, 1, LIGHTGRAY);

        EndDrawing();

        // Just write some dummy values for now.
        #ifndef PLATFORM_RPI
        read_a.voltage = (read_a.voltage + 1) & 0x3FFF;
        read_a.current = (read_a.current + 2) & 0x3FFF;
        read_b.voltage = (read_b.voltage - 1) & 0x3FFF;
        read_b.current = (read_b.current + 1) & 0x3FFF;
        #endif
    }

    CloseWindow();

    return 0;
}