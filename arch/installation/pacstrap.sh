#!/bin/sh
## Where

partition="/mnt"

## Initial packages


# First

pac="base"           # base shutdown
pac="$pac base-devel"     # base utils ; eg: gcc, make, which, etc...
pac="$pac linux-zen"      # kernel with git inside
pac="$pac linux-firmware" # driver of your hardware


# File system

pac="$pac dosfstools"  # VFAT
pac="$pac btrfs-progs" # btrfs
pac="$pac e2fsprogs"   # ext3, ext4
pac="$pac lvm2"        # LVM
pac="$pac cryptsetup"  # Encrypt


# Bootloader

pac="$pac grub"  # VFAT


# Network manager

pac="$pac networkmanager"	# nmcli (networkmanager command line)


# My tools

pac="$pac git"      # git is coool
pac="$pac vim"      # vim is coool
pac="$pac bat"      # bat is readable
pac="$pac zsh"      # oh-my-zsh
pac="$pac tmux"     # split window in the terminal
pac="$pac tree"     # not for ecology
pac="$pac kitty"    # terminal emulator (work better with ssh)
pac="$pac neofetch" # because arch logo is coool


# RTFM

pac="$pac man-db"    # manual data-base
pac="$pac man-pages" # manual pages


# Just some echo...

echo " all this package..."
echo "--> $pac"
echo "where..."
echo "--> $partition"


# The real things...

pacstrap "$partition" "$pac"
