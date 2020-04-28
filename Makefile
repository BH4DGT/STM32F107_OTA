

PROJECT_NAME=STM32F107RC6-OTA

STFLASH=st-flash

#
# makefile rules
#
default:all

all: $(OBJECTS)
# $(PROJECT_NAME).elf  $(PROJECT_NAME).hex $(PROJECT_NAME).bin
	$(TOOLCHAIN)size $(PROJECT_NAME).elf

flash: $(PROJECT_NAME).bin
	$(STFLASH) write $(PROJECT_NAME).bin 0x8000000

erase:
	$(STFLASH) erase

clean:
	-rm -rf $(PROJECT_NAME).bin



