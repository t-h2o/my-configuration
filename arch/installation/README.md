# My notes: arch installation

0. check if it's a EFI or BIOS.
It's will change your layout partition and bootloader.

1. partition your disk
I use gdisk

2. mount your disk and `swapon /dev/swapPartition`

3. Use my script `pacstrap.sh`

4. Use my script `chroot.sh`

5. Use my script `grub-*.sh` for grub
or `systemd-boot.sh`

## Problems

* pgp signature
* boot error: sbin/init
