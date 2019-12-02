#ifndef SPI_COMMS_H_
#define SPI_COMMS_H_

#include <stdint.h>

// Values to send to the DAC. (12 bits each)
struct {
    uint16_t voltage;
    uint16_t current;
} typedef OutputValues;

// The amount of bits differ between the DAC and ADC, so let's make different
// types for input and output to make the distinction more clear.

// Values read by the ADC from the regulator output. (14 bits each)
typedef OutputValues InputValues;

enum {
    CHANNEL_A = 0,
    CHANNEL_B = 1
} typedef OutputChannel;

int initializeSPI();
InputValues readWriteSPI(OutputChannel channel, OutputValues write);

#endif