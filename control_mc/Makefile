# DEVICE ....... The AVR device you compile for
# CLOCK ........ Target AVR clock rate in Hertz
# OBJECTS ...... The object files created from your source files. This list is
#                usually the same as the list of source files with suffix ".o".
# PROGRAMMER ... Options to avrdude which define the hardware you use for
#                uploading to the AVR and the interface where this hardware
#                is connected.
# FUSES ........ Parameters for avrdude to flash the fuses appropriately.

DEVICE     = atmega328pb
CLOCK      = 8000000
PROGRAMMER = -c avrispmkII -P usb -b 19200

SRC := main.c
OBJ := $(patsubst %.c,%.o,$(SRC))
DEP := $(patsubst %.c,%.d,$(SRC))

######################################################################
######################################################################

# Tune the lines below only if you know what you are doing:

AVRDUDE 	= avrdude.exe -v $(PROGRAMMER) -p $(DEVICE)
CC 			= avr-gcc
CFLAGS		= -Wall -O2 -DF_CPU=$(CLOCK) -mmcu=$(DEVICE) -B ../../packs/gcc/dev/atmega328pb/ -I ../../packs/include/
FUSES      	= -U lfuse:w:0xe2:m -U hfuse:w:0xde:m -U efuse:w:0xf4:m

# symbolic targets:
all:	main.hex

flash:	all
	$(AVRDUDE) -U flash:w:main.hex:i

fuse:
	$(AVRDUDE) $(FUSES)

# if you use a bootloader, change the command below appropriately:
load: all
	bootloadHID main.hex

clean:
	rm -f main.hex main.elf $(OBJ) $(DEP)

main.elf: $(OBJ) $(DEP)
	$(CC) $(CFLAGS) -o main.elf $(OBJ)
	avr-size -C main.elf

main.hex: main.elf
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex

-include $(DEP)

%.d: %.c
	@$(CC) -MM $< | sed 's/\($*\)\.o[ :]*/\1.o $@ : /g' > $@