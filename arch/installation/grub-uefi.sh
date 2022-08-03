#!/bin/sh

CRYPT_DEVICE="/dev/sda3"

set_grub () {
	
	grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
	# TODO: Remove the template from the script
	{
	echo "# GRUB boot loader configuration"
	echo "# /etc/default/grub"
	echo "# UEFI: Luks/LVM"
	echo ""
	echo "GRUB_DEFAULT=0"
	echo "GRUB_TIMEOUT=5"
	echo "GRUB_DISTRIBUTOR=\"Arch\""
	echo "GRUB_CMDLINE_LINUX_DEFAULT=\"loglevel=3 quiet\""
	echo "GRUB_CMDLINE_LINUX=\"cryptdevice=UUID=$(blkid ${CRYPT_DEVICE} --output value | head -n 1):cryptlvm root=/dev/cryptvol/root\""
	echo ""
	echo "# Preload both GPT and MBR modules so that they are not missed"
	echo "GRUB_PRELOAD_MODULES=\"part_gpt part_msdos lvm\""
	echo ""
	echo "# Uncomment to enable booting from LUKS encrypted devices"
	echo " GRUB_ENABLE_CRYPTODISK=y"
	echo ""
	echo "# Set to 'countdown' or 'hidden' to change timeout behavior,"
	echo "# press ESC key to display menu."
	echo "GRUB_TIMEOUT_STYLE=menu"
	echo ""
	echo "# Uncomment to use basic console"
	echo "GRUB_TERMINAL_INPUT=console"
	echo ""
	echo "# Uncomment to disable graphical terminal"
	echo "#GRUB_TERMINAL_OUTPUT=console"
	echo ""
	echo "# The resolution used on graphical terminal"
	echo "# note that you can use only modes which your graphic card supports via VBE"
	echo "# you can see them in real GRUB with the command \`vbeinfo'"
	echo "GRUB_GFXMODE=auto"
	echo ""
	echo "# Uncomment to allow the kernel use the same resolution used by grub"
	echo "GRUB_GFXPAYLOAD_LINUX=keep"
	echo ""
	echo "# Uncomment if you want GRUB to pass to the Linux kernel the old parameter"
	echo "# format \"root=/dev/xxx\" instead of \"root=/dev/disk/by-uuid/xxx\""
	echo "#GRUB_DISABLE_LINUX_UUID=true"
	echo ""
	echo "# Uncomment to disable generation of recovery mode menu entries"
	echo "GRUB_DISABLE_RECOVERY=true"
	echo ""
	echo "# Uncomment and set to the desired menu colors.  Used by normal and wallpaper"
	echo "# modes only.  Entries specified as foreground/background."
	echo "#GRUB_COLOR_NORMAL=\"light-blue/black\""
	echo "#GRUB_COLOR_HIGHLIGHT=\"light-cyan/blue\""
	echo ""
	echo "# Uncomment one of them for the gfx desired, a image background or a gfxtheme"
	echo "#GRUB_BACKGROUND=\"/path/to/wallpaper\""
	echo "#GRUB_THEME=\"/path/to/gfxtheme\""
	echo ""
	echo "# Uncomment to get a beep at GRUB start"
	echo "#GRUB_INIT_TUNE=\"480 440 1\""
	echo ""
	echo "# Uncomment to make GRUB remember the last selection. This requires"
	echo "# setting 'GRUB_DEFAULT=saved' above."
	echo "#GRUB_SAVEDEFAULT=true"
	echo ""
	echo "# Uncomment to disable submenus in boot menu"
	echo "#GRUB_DISABLE_SUBMENU=y"
	echo ""
	echo "# Probing for other operating systems is disabled for security reasons. Read"
	echo "# documentation on GRUB_DISABLE_OS_PROBER, if still want to enable this"
	echo "# functionality install os-prober and uncomment to detect and include other"
	echo "# operating systems."
	echo "#GRUB_DISABLE_OS_PROBER=false"
	} > /etc/default/grub
	grub-mkconfig -o /boot/grub/grub.cfg

}

set_mkinitcpio () {

	cp mkinitcpio.conf /etc/
	mkinitcpio -P

}

main () {

	pacman -Sy grub efibootmgr
	set_mkinitcpio
	set_grub

}

main
