##	where

partition="/mnt"

##	Initial packages


#	first

pac+="base-devel "  # base utils ; eg: gcc, make, which, etc...
pac+="linux-zen "   # kernel with git inside
pac+="linux-firmware "  # driver of your hardware

#	file system

pac+="dosfstools "	# VFAT
pac+="e2fsprogs "	# ext3, ext4


#	Network manager

pac+="networkmanager "	# nmcli (networkmanager command line)


#	My tools

pac+="git "		# git is coool
pac+="vim "		# vim is coool
pac+="bat "		# bat is readable
pac+="zsh "		# oh-my-zsh
pac+="tmux "		# split window in the terminal
pac+="tree "		# not for ecology
pac+="neofetch "	# because arch logo is coool


#	RTFM

pac+="man-db "		# manual data-base
pac+="man-pages "	# manual pages


#	just some echo...

echo " all this package..."
echo "--> $pac"
echo "where..."
echo "--> $partition"


#	the real things...

pacstrap $partition $pac
