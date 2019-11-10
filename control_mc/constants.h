#ifndef CONSTANTS_H_
#define CONSTANTS_H_

#include <avr/io.h>

// Clock rate: 1 / 128
#define SPI_SLAVE_CLOCK_RATE ((1 << SPR0) | (1 << SPR1))

// DAC defines
// Clock rate: 1 / 128
#define DAC_CLOCK_RATE ((1 << SPR0) | (1 << SPR1))
#define DDR_DAC_SS DDRE
#define DD_DAC_SS  DDE2

#define SPI_VOL_DAC_CTRL_BITS = 0x30;
#define SPI_CUR_DAC_CTRL_BITS = 0xB0;

// ADC defines
// Just a plain divider
#define TWI_CLOCK_DIV 0xFF

// Pins
#define DDR_MISO0 DDRB
#define DD_MISO0  DDB4

#define DDR_MOSI1 DDRE
#define DD_MOSI1  DDE3
#define DDR_SCK1  DDRC
#define DD_SCK1   DDC1

#define DDR_SCL0  DDRC
#define DD_SCL0   DDC5
#define DDR_SDA0  DDRC
#define DD_SDA0   DDC4

#endif