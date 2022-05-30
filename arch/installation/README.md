# My notes: arch installation

## Instructions

1. check if it's a EFI or BIOS.
It's will change your layout partition and bootloader.

2. partition your disk, personaly I use gdisk.
I did a few explainations in [`disk.md`](disk.md)

3. Add or remove packages and excecute my script [`pacstrap.sh`](pacstrap.sh)

4. Set information of your partition and change your current root

```
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
```

5. Edit and excecute my script `chroot.sh`

6. Set up a bootloader (I wish you luck !)
	* UEFI
		* [`grub-uefi.sh`][lgrub]
		* [`systemd-boot.sh`][lsystemd]
	* BIOS
		* [`grub-bios.sh`][lgrub]

[lgrub]: https://wiki.archlinux.org/title/GRUB
[lsystemd]: https://wiki.archlinux.org/title/Systemd-boot

7. Take a look on `post-inst.sh`

## Troubleshooting

* PGP signature
* boot error: `sbin/init`
