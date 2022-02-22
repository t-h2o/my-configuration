# /dev/sda1 1 MiB and without file system and gdisk code ef02
disk_install="/dev/sda"
grub-install --target=i386-pc $disk_install
grub-mkconfig -o /boot/grub/grub.cfg
