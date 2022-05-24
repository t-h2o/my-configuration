### Install packages

pacman -S xorg-xinit    \
	xorg-server         \
	i3-wm               \
	i3status            \
	dmenu lightdm       \
	lightdm-gtk-greeter

### Mode files

cp xinitrc ~/.xinitrc
mkdir -p $HOME/.config/i3
cp config $HOME/.config/i3/
