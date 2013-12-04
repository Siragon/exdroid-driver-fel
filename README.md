Drivers FEL Mode - Exdroid Tablet
=================================

FEL is a low-level subroutine containing in the BootROM on allwinner devices.

It is used for provisioning and recovery of devices using USB.

<p>When the chip goes to FEL mode, the chip will be waiting for communication from PC though USB. The primary purpose for FEL is for flashing the NAND with the PC tool [[LiveSuit]]

== Go to FEL mode ==
There are some ways to go to FEL mode.

* Press the FEL key when power up
on some A10 tablets the FEL key is the one labeled "recovery", some tablets don't have FEL key. On [[cubieboard]] the FEL key is the one under the USB OTG port.

* Go to FEL mode by combo key
Almost all the A10 tablets can go to the FEL mode by the following instructions:
# Power off the device       
# Press and hold any physical key except the power key on the device (ie press and hold Vol+ key, still holding in 3 and 4)       
# Press and hold power key for about 2s (power on the device, when powering on, if a key is pressed, the devices will not boot until key released or 4)       
# Release power key and press power key 3 times (I usually just keep pressing the power key)

Note: When using this method the board is already initialized

* Go to FEL mode by serial console

The Allwinner boot1 boot loader enters FEL mode if you send the letter '1' on the console during startup.

Note: When using this method the board is already initialized

* Use fel-sdboot from sunxi-tools

This is a small SDCARD boot image that only jumps to FEL. Install on an sdcard the same way as u-boot SPL:

<tt>dd if=sunxi-tools/bin/fel-sdboot.sunxi of=/dev/sdc bs=1024 seek=8</tt>

* The CPU automatically enters FEL mode if it fails to find a valid boot image on any of the boot devices.


	Note: that different ways of entering FEL and at low-level they are not equal. All these methods differs with each other in, how much of the board have been initialized. e.g. the reset/recovery button is most low level and enters FEL mode before anything is initialized. So, you can not use this mode to get boot1.header and script.bin. home + power method makes bootloader enter in fel mode after initializing everything. If you are getting error 'libusb usb_bulk+send error -7', then use home + power method.


Sunxi: Community portal
Available from http://linux-sunxi.org/FEL
Under: http://creativecommons.org/licenses/by/3.0/