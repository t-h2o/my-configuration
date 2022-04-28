# sda      298.1G  disk
# |-sda1       8G  part swap [SWAP]
# `-sda2      42G  part ext4 /

disk_install="/dev/sda"

grub-install --force --target=i386-pc $disk_install
grub-mkconfig -o /boot/grub/grub.cfg
