# Arch envrironment

> Arch because it's KISS

[![asciicast](https://asciinema.org/a/510943.svg)](https://asciinema.org/a/510943?t=5)

## Installation

All informations not here are on the Arch wiki: [installtion](https://wiki.archlinux.org/title/Installation_guide)

### SSH connection

After to boot with the USB key, connect to internet, change the root password and log in with

```sh
$ ssh root@${IP_ADDRESS}
```

### Install git

```sh
# pacman -Sy git
```

> In my case I have to run twice this command, the first time I receive a `warning`

### Disk with UEFI

#### Partition

UEFI is a little weird, you need a `/boot/efi` partition of ~64 MiB and a `/boot` partition at least 300MiB.
Increase the security device with an encryption of the rest of the disk.

```lsblk
sda1: /boot/efi  ~64 MiB    ef00
sda2: /boot      ~300 Mib   ef00
sda3: encrypted  FREE SPACE 8309
```

> Resource: Arch wiki: [Partition](https://wiki.archlinux.org/title/Partitioning)

#### LVM on Luks

For manage easly the partitions, using LVM.

> Resource: Arch wiki: [LVM on LUKS](https://wiki.archlinux.org/title/Dm-crypt/Encrypting_an_entire_system#LVM_on_LUKS)

#### File system

Add a laber and a file system inside the partitions/logic volume. For the `root`, `btrfs` is an alternative of `ext4`

```sh
# mkfs.fat -n THE_EFI -F 32 /dev/sda1 # /boot/efi
# mkfs.fat -n THE_BOOT -F 32 /dev/sda2 # /boot
# mkfs.btrfs -L THE_ROOT /dev/vgname/root # root
# mkswap -L THE_SWAP /dev/vgname/swap # swap
```

#### Mount

```sh
# swapon /dev/vgname/swap
# mount /dev/vgname/root /mnt
# mount /dev/sda2 /mnt/boot --mkdir
# mount /dev/sda1 /mnt/boot/efi --mkdir
```
