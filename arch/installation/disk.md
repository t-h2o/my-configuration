# The goal

## Encryption

If you install for your personnal computer that stays at home.
It is not important to encrypt your disk. But, if your hardware isn't safe,
for example a laptop. I advise you to encrypt your root parition. Why ?
If I steal your laptop, I cannot open your files.

_DO NOT ENCRYPT YOUR BOOT PARITITION !_

## Logical volume manager

I advise to use [LVM][llvm] for make easier the use of your disks.

[llvm]: https://wiki.archlinux.org/title/LVM


## Example laptop layout

I made 2 partitions,
* boot, not encrypted
* the rest, encrypted

I followed this
[tutorial](https://wiki.archlinux.org/title/Dm-crypt/Encrypting_an_entire_system#LVM_on_LUKS)

```
sda
├─sda1       (420 MiB)
└─sda2       (The rest)
  └─vgname (encrypted partition)
    ├─vgname-cryswap (logical volume: swap)
    └─vgname-cryroot (logical volume: root)
```

## Make your partitions

I will take the example of the laptop

1. with gisk, creating your partitions

```
gdisk /dev/sda
o (overwrite all the disk)
n (new partition)

### Boot partition
# Size: 420MiB
# Hex code: ef00: EFI system partition

if you use LVM (

### LVM partition
# Size: All disk
# Hex code: 8e00: Linux LVM

) else (

### Root partition
# Size: A big one
# Hex code: 8300:

### Swap partition
# Size half, 1 or 2 times your ram size
# Hex code: 8200:

)
```

2. Encrypting your disk

```
cryptsetup luksFormat /dev/sda2
# Put your password
cryptsetup open /dev/sda2 cryptvolname
```


3. Creating physical group

```
pvcreate /dev/mappe/cryptvolname pvname
```


4. Creating group volume

```
vgcreate pvname vgname
```


5. Creating logical volume

For the swap's size, half 1 or 2 times of your RAM.

```
lvcreate -L 4G vgname -n swap
lvcreate -l 100%FREE -n root
```


6. Make file system

```
mkfs.fat -n THE_BOOT -F 32 /dev/sda1
mkfs.ext4 -L THE_ROOT /dev/vgname/root
mkswap -L THE_SWAP /dev/vgname/swap
```


7. Mount the swap and the partitions

```
swapon /dev/vgname/swap
mount /dev/vgname/root /mnt
mount --mkdir /dev/sda1 /mnt/boot
```
