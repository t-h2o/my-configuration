##	where

partition="/mnt"

##	Initial packages


#	first

pac+="base "		# I don't know but arch wiki say
pac+="linux "		# I don't know but arch wiki say
pac+="linux-firmware "	# I don't know but arch wiki say


#	file system

pac+="dosfstools "	# VFAT
pac+="e2fsprogs "	# ext3, ext4


#	Network manager

pac+="networkmanager "	# nmcli (networkmanager command line)


#	My tools

pac+="git "		# git is coool
pac+="vim "		# vim is coool
pac+="bat "		# bat is readable
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
