#ifndef SPI_PROTOCOL_H_
#define SPI_PROTOCOL_H_

// Clock polarity and clock phase controls when SPI
// data is shifted out and latched (rising or falling edge).
#define MAIN_SPI_CPOL 0
#define MAIN_SPI_CPHA 1

// High bit mask for SET and READ values, as they may use
// different amount of bits. (12 and 14 bits at time of writing.)
#define SET_HI_MASK     0x0F
#define READ_HI_MASK    0x3F

// Use magic values to ease debugging.
typedef enum {
    /*
     * Sets voltage and current, and retuns the latest measured values.
     *
     * Packet length: 5 bytes
     * Slave in:
     * |--------|--------|--------|--------|--------|
     * |-p_type-|xxxx-voltage set-|xxxx-current set-|
     *
     * Slave out:
     * |--------|--------|--------|--------|--------|
     * |xxxxxxxx|xx--voltage read-|xx--current read-|
     *
     * TODO: Add parity bit?
     */
    READWRITE = 0xDA
} PacketType;

#endif