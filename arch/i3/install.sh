### Install packages

pacman -S xorg xorg-xinit i3-wm i3lock i3status i3blocks dmenu


### Mode files

cp ./Assets/xinitrc ~/.xinitrc
# cp /etc/X11/xinit/xinitrc ~/.xinitrc
mkdir -p $HOME/.config/i3
cp ./Assets/config $HOME/.config/i3/
