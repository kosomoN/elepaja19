#include "constants.h"

#include <avr/interrupt.h>

static void setupSlaveSPI(void)
{
    // Set data direction
    DDR_MISO0 |= 1 << DD_MISO0;

    // Enable SPI, with interrupt
    SPCR0 = (1 << SPE) | (1 << SPIE) | SPI_SLAVE_CLOCK_RATE;
}

static void setupDAC(void)
{
    // Set data directions
    DDR_SCK1  |= 1 << DD_SCK1;
    DDR_MOSI1 |= 1 << DD_MOSI1;
    DDR_DAC_SS |= 1 << DD_DAC_SS;

    // Enable SPI, master mode, no interrupt
    SPCR1 = (1 << SPE1) | (1 << MSTR1) | DAC_CLOCK_RATE;
}

static void setupADC(void)
{
    // Bit rate register
    TWBR0 = TWI_CLOCK_DIV;

    // Interrupt enable, enable ack
    TWCR0 = (1 << TWIE) | (1 << TWEA);
}

int main(void)
{
    setupSlaveSPI();
    setupDAC();
    setupADC();

    // Enable global interrupts
    sei();

    return 0;
}
