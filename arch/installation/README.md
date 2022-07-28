# My notes: arch installation

> An installation LVM on luks for UEFI

[![asciicast](https://asciinema.org/a/510943.svg)](https://asciinema.org/a/510943?t=5)

## Instructions

1. Check if it's a EFI or BIOS. It's will change your layout partition and bootloader.

   ```sh
   ls /sys/firmware/efi/efivars
   ```
   > Look a few example of disk layout: [example](https://wiki.archlinux.org/title/Partitioning#Example_layouts)

2. Partition your disk, personaly I use gdisk. I did a few explainations in [`disk.md`](disk.md)

3. Add or remove packages and excecute my script [`pacstrap.sh`](pacstrap.sh)

4. Set information of your partition and change your current root

   ```sh
   genfstab -U /mnt >> /mnt/etc/fstab
   ```

   ```sh
   arch-chroot /mnt
   ```

5. Edit and excecute my script `chroot.sh`

6. Set up a bootloader (I wish you luck !)
   * UEFI
     * [`grub-uefi.sh`](https://wiki.archlinux.org/title/GRUB)
     * [`systemd-boot.sh`](https://wiki.archlinux.org/title/Systemd-boot)
   * BIOS
     * [`grub-bios.sh`](https://wiki.archlinux.org/title/GRUB)

7. Take a look on `post-inst.sh`

## Troubleshooting

* PGP signature
* boot error: `sbin/init`
