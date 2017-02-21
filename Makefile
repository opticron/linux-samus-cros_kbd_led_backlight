ifneq ($(KERNELRELEASE),)
obj-m := cros_kbd_led_backlight.o
else
KDIR ?= /lib/modules/`uname -r`/build

cros_kbd_led_backlight: cros_kbd_led_backlight.c
	$(MAKE) -C $(KDIR) M=$$PWD

clean:
	rm -f *.o *.ko modules.order Module.symvers *.mod.c
endif
