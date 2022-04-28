### Install packages

pacman -S xorg-xinit i3-wm i3status dmenu lightdm lightdm-gtk-greeter


### Mode files

cp ./Assets/xinitrc ~/.xinitrc
mkdir -p $HOME/.config/i3
cp ./Assets/config $HOME/.config/i3/
