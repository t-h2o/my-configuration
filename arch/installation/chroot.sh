region="Europe"
city="Zurich"
myhostame="panic"

# genfstab -U /mnt >> /mnt/etc/fstab
# arch-chroot /mnt
ln -sf /usr/share/zoneinfo/$region/$city /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo $myhostame > /etc/hostname
# passwd
