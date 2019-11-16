#include "constants.h"

#include <avr/cpufunc.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>

#include <stdbool.h>


// Always disable interrupts when accessing.
static uint32_t set_voltage  = 0U;
static uint32_t read_voltage = 0U;

static uint32_t set_current  = 0U;
static uint32_t read_current = 0U;


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
    DDR_SCK1    |= 1 << DD_SCK1;
    DDR_MOSI1   |= 1 << DD_MOSI1;
    DD_DAC_CS   |= 1 << DD_DAC_CS_PIN;
    DD_DAC_LDAC |= 1 << DD_DAC_LDAC_PIN;

    // Enable SPI, master mode, no interrupt
    SPCR1 = (1 << SPE1) | (1 << MSTR1) | DAC_CLOCK_RATE;
    // Lift chip select
    PORT_DAC_CS |= 1 << PORT_DAC_CS;
}

static void setupADC(void)
{
    // Baud rate register
    TWBR0 = TWI_CLOCK_DIV;

    // Interrupt enable, enable ack
    TWCR0 = (1 << TWIE) | (1 << TWEA);
}

// Writes the set values for current and voltage to the DAC.
// Blocks until complete.
// Data protocol: http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf
static void writeDAC(void)
{
    cli();
    uint32_t curr = set_current;
    uint32_t volt = set_voltage;
    sei();

    uint8_t bytes[4];

    uint8_t enable_volt = (volt > 0) ? 1 : 0;
    uint8_t enable_curr = (curr > 0) ? 1 : 0;

    bytes[0] = (1 << 7) |            // Channel A
               (1 << 5) |            // Gain 1x
               (enable_volt << 4) |  // Enable ouput
               ((volt >> 8) & 0x0F); // 4 MSBs.
    bytes[1] = volt & 0xFF;

    bytes[2] = (0 << 7) |            // Channel B
               (1 << 5) |            // Gain 1x
               (enable_curr << 4) |  // Enable ouput
               ((curr >> 8) & 0x0F); // 4 MSBs.
    bytes[3] = curr & 0xFF;


    // Write channel A
    PORT_DAC_CS &= ~(1 << PORT_DAC_CS);
    {
        SPDR1 = bytes[0];
        // Wait until the byte is transferred.
        while (!(SPSR1 & (1 << SPIF1))) { };
        SPDR1 = bytes[1];
        while (!(SPSR1 & (1 << SPIF1))) { };
    }
    PORT_DAC_CS |= 1 << PORT_DAC_CS;

    // 1 CPU cycle is enough for minimum CS high time

    // Write channel B
    PORT_DAC_CS &= ~(1 << PORT_DAC_CS);
    {
        SPDR1 = bytes[2];
        while (!(SPSR1 & (1 << SPIF1))) { };
        SPDR1 = bytes[3];
        while (!(SPSR1 & (1 << SPIF1))) { };
    }
    PORT_DAC_CS |= 1 << PORT_DAC_CS;

    // Latch outputs, with some delay to match minimum timing
    _NOP();
    PORT_DAC_LDAC &= ~(1 << PORT_DAC_LDAC_PIN);
    _NOP();
    PORT_DAC_LDAC |= (1 << PORT_DAC_LDAC_PIN);
}

int main(void)
{
    // Enable watchdog. See https://microchipdeveloper.com/8avr:avrwdt
    // https://www.nongnu.org/avr-libc/user-manual/group__avr__watchdog.html
    wdt_enable(WDTO_1S);

    setupSlaveSPI();
    setupDAC();
    setupADC();

    // Enable global interrupts
    sei();

    while (true) {
        wdt_reset();

        writeDAC();
    }

    return 0;
}
