#Chromebook Keyboard backlight driver for Chromebook Pixel 2015 (samus)

The latest 4.9 kernel supports all samus hardware except for the keyboard backlight. This lets you build the kernel module for that support.

This driver was ripped from [raphael's linux-samus repo](https://github.com/raphael/linux-samus) since the whole kernel is no longer necessary.

##Requirements
* Google Chromebook Pixel 2015 (samus) with Linux installed
* Build tools and kernel headers

##How to build

Clone the code 

Build with:
	make

You will get a driver:
	cros_kbd_led_backlight.ko   #led class driver
	
Now, you can load the drivers:
	sudo insmod chros_kbd_led_backlight.ko

OK, check whether the drivers load successfully:
	ls /sys/class/leds
	
If you see `chromeos::kbd_backlight` from `ls` output, It works!

##How to install
Just toss it in your kernel's modules directory (/lib/modules/`uname -r`/kernel/drivers/leds)

##How to use
Use the same init definitions and helper scripts from [raphael's linux-samus repo](https://github.com/raphael/linux-samus) that you're likely already using and everything should just work since it's the same driver.
