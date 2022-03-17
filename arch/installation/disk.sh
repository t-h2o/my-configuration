MY_DISK="/dev/sda"
gdisk $MY_DISK

#	create new partition table
#	o

#	boot partition
#	n	/420MiB	/EF00

#	root partition
#	n	/25GiB	/8300

#	swap partition
#	n	/8GiB	/8200
mkfs.ext4 -L THE_ROOT /dev/root_partition
mkswap -L THE_SWAP /dev/swap_partition
mkfs.fat -n THE_BOOT -F 32 /dev/efi_system_partition
lsblk -f
