timedatectl set-ntp true
pacman-key --init
pacman-key --populate archlinux
pacman -S archlinux-keyring
pacman -Sy git
