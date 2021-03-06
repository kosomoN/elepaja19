#include "constants.h"
#include "spi_protocol.h"

#include "avr-i2c/i2c.h"
#include <avr/cpufunc.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <util/delay.h>

#include <stdbool.h>
#include <string.h>

#define SPI_BUFFER_SIZE 5

uint8_t spi_rx_buffer[SPI_BUFFER_SIZE] = { 0 };
uint8_t spi_tx_buffer[SPI_BUFFER_SIZE] = { 0 };
uint8_t spi_buf_length = 0;
bool spi_packet_ready = false;

struct {
    uint16_t voltage;
    uint16_t current;
} typedef OutputValues;

// Always disable interrupts when accessing.
static OutputValues set_values;
static OutputValues read_values;

/*
 * State of the ADC communication.
 * Every ADC conversion first requires an I2C write operation to select the
 * correct channel. After the write, the ADC needs sufficient time to finish
 * the conversion before an I2C read operation can be made.
 *
 * ADC_RD/WR: I2C read/write operation in progress.
 * ADC_WTNG: Conversion in progress, I2C bus is idling.
 * ADC_UNINIT: State at start. Will initiate a voltage conversion.
 */
enum {
    ADC_WR_VOLTAGE,
    ADC_WTNG_VOLTAGE,
    ADC_RD_VOLTAGE,
    ADC_WR_CURRENT,
    ADC_WTNG_CURRENT,
    ADC_RD_CURRENT,
    ADC_UNINIT
} adc_state;

i2c_txn_t i2c_t;
uint8_t i2c_buf[4];

ISR(SPI0_STC_vect)
{
    if (spi_buf_length < SPI_BUFFER_SIZE)
    {
        spi_rx_buffer[spi_buf_length] = SPDR0;
        SPDR0 = spi_tx_buffer[spi_buf_length];
        spi_buf_length++;
    }
}

// Use an interrupt on the slave SPI chip select pin
// to reset the SPI rx/tx buffers.
ISR(PCINT0_vect)
{
    // Falling edge means start of SPI transfer
    if (PIN_SS0 & (1 << PIN_SS0_PIN)) {
        spi_packet_ready = true;
    } else {
        spi_packet_ready = false;
        spi_buf_length = 0;
        spi_tx_buffer[0] = read_values.voltage >> 8;
        spi_tx_buffer[1] = read_values.voltage;
        spi_tx_buffer[2] = read_values.current >> 8;
        spi_tx_buffer[3] = read_values.current;
    }
}

// SPI interrupt executed after a byte has been received.
static void setupSlaveSPI(void)
{
    // Set data direction
    DDR_MISO0 |= 1 << DD_MISO0;

    // Enable pull-ups as the optocouplers are open-collector
    PORT_SPI0 |= (1 << PORT_MOSI0_PIN) |
                 (1 << PORT_SCK0_PIN)  |
                 (1 << PORT_SS0_PIN);

    // Enable pin-change interrupt on chip select pin
    PCICR |= (1 << PCIE0); // Enable pin change interrupt 1
    PCMSK0 |= (1 << PCINT2); // Enable interrupt for pin 14 (chip select)

    // Enable SPI, with interrupt
    SPCR0 = (1 << SPE) |
            (1 << SPIE) |
            (MAIN_SPI_CPOL << CPOL) |
            (MAIN_SPI_CPHA << CPHA);
}

static void setupDAC(void)
{
    // Set data directions
    DDR_SCK1    |= 1 << DD_SCK1;
    DDR_MOSI1   |= 1 << DD_MOSI1;
    DDR_DAC_CS   |= 1 << DD_DAC_CS;
    DDR_DAC_LDAC |= 1 << DD_DAC_LDAC;

    // Enable SPI, master mode, no interrupt
    SPCR1 = (1 << SPE1) | (1 << MSTR1) | DAC_CLOCK_RATE;
    // Lift chip select
    PORT_DAC_CS |= 1 << PORT_DAC_CS_PIN;
}

#ifdef ENABLE_ADC
static void setupADC(void)
{
    adc_state = ADC_UNINIT;
    i2c_txn_init(&i2c_t, 1);

    // Initialize TIMER0 for conversion delaying
    TCCR0B = _BV(2) | _BV(0); // 1024 clock prescaler
    // Set compare value to (delay / timer0_period)
    const uint8_t compare_val = ADC_CONV_DELAY_US / (1024U * 1000000U / F_CPU);
    OCR0A = compare_val;
}
#endif

// Writes the set values for current and voltage to the DAC.
// Blocks until complete.
// Data protocol: http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf
static void writeDAC(OutputValues *values)
{
    // Make a local copy to avoid data races
    cli();
    OutputValues tmp_values = *values;
    sei();

    uint8_t bytes[4];

    uint8_t enable_volt = (tmp_values.voltage > 0) ? 1 : 0;
    uint8_t enable_curr = (tmp_values.current > 0) ? 1 : 0;

    bytes[0] = (1 << 7) |           // Channel A
               (1 << 5) |           // Gain 1x
               (enable_curr << 4) | // Enable ouput
               ((tmp_values.voltage >> 8) & 0x0F); // 4 MSBs.
    bytes[1] = tmp_values.voltage & 0xFF;

    bytes[2] = (0 << 7) |           // Channel B
               (1 << 5) |           // Gain 1x
               (enable_volt << 4) | // Enable ouput
               ((tmp_values.current >> 8) & 0x0F); // 4 MSBs.
    bytes[3] = tmp_values.current & 0xFF;


    // Write channel A
    PORT_DAC_CS &= ~(1 << PORT_DAC_CS_PIN);
    {
        SPDR1 = bytes[0];
        // Wait until the byte is transferred.
        while (!(SPSR1 & (1 << SPIF1))) { };
        SPDR1 = bytes[1];
        while (!(SPSR1 & (1 << SPIF1))) { };
    }
    PORT_DAC_CS |= 1 << PORT_DAC_CS_PIN;

    // 1 CPU cycle is enough for minimum CS high time

    // Write channel B
    PORT_DAC_CS &= ~(1 << PORT_DAC_CS_PIN);
    {
        SPDR1 = bytes[2];
        while (!(SPSR1 & (1 << SPIF1))) { };
        SPDR1 = bytes[3];
        while (!(SPSR1 & (1 << SPIF1))) { };
    }
    PORT_DAC_CS |= 1 << PORT_DAC_CS_PIN;

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
    wdt_enable(WDTO_4S);
    wdt_reset();

    DDRC |= 1 << DDC4;
    PORTC |= 1 << PORTC4;

    setupDAC();
#ifdef ENABLE_ADC
    setupADC();
#endif

    // Enable global interrupts
    sei();

    // Initialize DAC output to zero
    memset(&set_values, 0, sizeof(set_values));
    memset(&read_values, 0, sizeof(read_values));
    writeDAC(&set_values);

    setupSlaveSPI();
    while (true) {
        wdt_reset();

        if (spi_packet_ready) {
            uint8_t packet_type = 0;
            cli();
            {
                // Make sure the packet has not been cleared before
                // the cli instruction got executed.
                if (spi_packet_ready) {
                    spi_packet_ready = false;
                    packet_type = spi_rx_buffer[0];
                    if (packet_type == READWRITE && spi_buf_length == 5) {
                        set_values.voltage = ((spi_rx_buffer[1] & 0x0F) << 8) |
                                               spi_rx_buffer[2];
                        set_values.current = ((spi_rx_buffer[3] & 0x0F) << 8) |
                                               spi_rx_buffer[4];
                    }
                }
            }
            sei();

            // Enable interrupts before actually writing the values to DAC
            if (packet_type == READWRITE) {
                writeDAC(&set_values);

                PINC |= 1 << PINC4;
            }
        }

        switch (adc_state)
        {
        case ADC_UNINIT:
            // Initiate a new write
            i2c_buf[0] = ADC_VOLT_CONF;
            i2c_op_init_wr(&i2c_t.ops[0], ADC_ADDRESS, i2c_buf, 1);
            i2c_post(&i2c_t);
            adc_state = ADC_WR_VOLTAGE;
            break;
        case ADC_WR_VOLTAGE:
        case ADC_WR_CURRENT:
            if (i2c_t.flags & I2C_TXN_DONE)  {
                if (i2c_t.flags & I2C_TXN_ERR) {
                    // TODO Handle error
                    adc_state = ADC_UNINIT;
                } else {
                    TCNT0 = 0;          // Reset TIMER0
                    TIFR0 = _BV(OCF0A); // Reset Compare A
                    adc_state = (adc_state == ADC_WR_VOLTAGE) ? ADC_WTNG_VOLTAGE : ADC_WTNG_CURRENT;
                }
            }
            break;
        case ADC_WTNG_VOLTAGE:
        case ADC_WTNG_CURRENT:
            // Wait for TIMER0
            if (TIFR0 & _BV(OCF0A)) {
                i2c_op_init_rd(&i2c_t.ops[0], ADC_ADDRESS, i2c_buf, 3);
                i2c_post(&i2c_t);
                adc_state = (adc_state == ADC_WTNG_VOLTAGE) ? ADC_RD_VOLTAGE : ADC_RD_CURRENT;
            }
            break;
        case ADC_RD_VOLTAGE:
        case ADC_RD_CURRENT:
            if (i2c_t.flags & I2C_TXN_DONE) {
                if (i2c_t.flags & I2C_TXN_ERR) {
                    // TODO Handle error
                    adc_state = ADC_UNINIT;
                } else {
                    if (adc_state == ADC_RD_VOLTAGE) {
                        cli();
                        read_values.voltage = ((i2c_buf[0] & READ_HI_MASK) << 8) | i2c_buf[1];
                        sei();
                    } else {
                        cli();
                        read_values.current = ((i2c_buf[0] & READ_HI_MASK) << 8) | i2c_buf[1];
                        sei();
                    }

                    // Initiate a new write when reading is done
                    i2c_buf[0] = (adc_state == ADC_RD_VOLTAGE) ? ADC_CURR_CONF : ADC_VOLT_CONF;
                    i2c_op_init_wr(&i2c_t.ops[0], ADC_ADDRESS, i2c_buf, 1);
                    i2c_post(&i2c_t);

                    adc_state = (adc_state == ADC_RD_VOLTAGE) ? ADC_WR_CURRENT : ADC_WR_VOLTAGE;
                }
            }
            break;
        }
    }

    return 0;
}
