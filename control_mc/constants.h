#ifndef CONSTANTS_H_
#define CONSTANTS_H_

#include <avr/io.h>

// DAC defines
// Clock rate: 1 / 128
#define DAC_CLOCK_RATE      ((1 << SPR0) | (1 << SPR1))

// Data direction registers
#define DDR_DAC_CS          DDRE
#define DD_DAC_CS           DDE2
#define DDR_DAC_LDAC        DDRC
#define DD_DAC_LDAC         DDC2

// Port registers (output high/low selection)
#define PORT_DAC_CS         PORTE
#define PORT_DAC_CS_PIN     PORTE2
#define PORT_DAC_LDAC       PORTC
#define PORT_DAC_LDAC_PIN   PORTC2

// ADC defines
// Just a plain divider
#define TWI_CLOCK_DIV       0xFF
#define ADC_ADDRESS         0x68
#define ADC_VOLT_CONF       (         _BV(4) | _BV(2))  // Channel 1, continuous, 14 bits
#define ADC_CURR_CONF       (_BV(5) | _BV(4) | _BV(2))  // Channel 2, continuous, 14 bits
#define ADC_CONV_FREQ       45                          // ~45 SPS at 14 bits
#define ADC_CONV_DELAY_US   (1000000U / ADC_CONV_FREQ)

// SPI pins
#define DDR_MISO0       DDRB
#define DD_MISO0        DDB4

#define PIN_SS0         PINB
#define PIN_SS0_PIN     PINB2

#define PORT_SPI0       PORTB
#define PORT_MOSI0_PIN  PORTB3
#define PORT_SCK0_PIN   PORTB5
#define PORT_SS0_PIN    PORTB2

#define DDR_MOSI1       DDRE
#define DD_MOSI1        DDE3
#define DDR_SCK1        DDRC
#define DD_SCK1         DDC1

#define DDR_SCL0        DDRC
#define DD_SCL0         DDC5
#define DDR_SDA0        DDRC
#define DD_SDA0         DDC4

#endif