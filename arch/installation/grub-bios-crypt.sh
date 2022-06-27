
disk_install="/dev/sda"

grub-install --force --target=i386-pc $disk_install
grub-mkconfig -o /boot/grub/grub.cfg

# Add in mkinitcpio.conf:
# HOOKS=(base udev autodetect keyboard keymap consolefont modconf block encrypt lvm2 filesystems fsck)
# Reload mkinitcpio with
# mkinitcpio -P

