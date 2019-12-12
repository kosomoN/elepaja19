#include "spi_comms.h"
#include "../control_mc/spi_protocol.h"

#include <string.h>
#include <stdio.h>
#include <errno.h>
#include <linux/spi/spidev.h>
#include <wiringPiSPI.h>

#define SPI_FREQ 500000

int initializeSPI()
{
    int mode = ((MAIN_SPI_CPOL) ? SPI_CPOL : 0) |
               ((MAIN_SPI_CPHA) ? SPI_CPHA : 0);

    errno = 0;
    int ret = wiringPiSPISetupMode(CHANNEL_A, SPI_FREQ, mode);
    if (ret == -1)
        return errno;

    ret = wiringPiSPISetupMode(CHANNEL_B, SPI_FREQ, mode);
    if (ret == -1)
        return errno;

    return 0;
}

InputValues readWriteSPI(OutputChannel channel, OutputValues write)
{
    uint8_t buf[5] = { 0xDA,
                       (write.voltage >> 8) & 0x0F, write.voltage & 0xFF,
                       (write.current >> 8) & 0x0F, write.current & 0xFF };

    errno = 0;
    if (!wiringPiSPIDataRW(channel, buf, sizeof(buf))) {
        int err = errno;
        if (!err) {
            printf("Error sending: %s\n", strerror(err));
        }
    }

    InputValues read = { .voltage = ((buf[1] & 0x3F) << 8) | buf[2],
                         .current = ((buf[3] & 0x3F) << 8) | buf[4]};
    return read;
}
