## Where

partition="/mnt"

## Initial packages


# First

pac+="base "           # base shutdown
pac+="base-devel "     # base utils ; eg: gcc, make, which, etc...
pac+="linux-zen "      # kernel with git inside
pac+="linux-firmware " # driver of your hardware


# File system

pac+="dosfstools "  # VFAT
pac+="e2fsprogs "   # ext3, ext4
pac+="lvm2 "        # LVM
pac+="cryptsetup "  # Encrypt


# Network manager

pac+="networkmanager "	# nmcli (networkmanager command line)


# My tools

pac+="git "      # git is coool
pac+="vim "      # vim is coool
pac+="bat "      # bat is readable
pac+="zsh "      # oh-my-zsh
pac+="tmux "     # split window in the terminal
pac+="tree "     # not for ecology
pac+="kitty "    # terminal emulator (work better with ssh)
pac+="neofetch " # because arch logo is coool


# RTFM

pac+="man-db "    # manual data-base
pac+="man-pages " # manual pages


# Just some echo...

echo " all this package..."
echo "--> $pac"
echo "where..."
echo "--> $partition"


# The real things...

pacstrap $partition $pac
