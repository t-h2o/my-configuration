# https://wiki.archlinux.org/title/systemd-boot
# check is it's a UEFI
efivar --list
ls /sys/firmware/efi/efivars

# install
cd /boot
bootctl install
