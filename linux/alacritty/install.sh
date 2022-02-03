 sudo add-apt-repository ppa:mmstick76/alacritty
 sudo apt update
 sudo apt install alacritty
mkdir -p $HOME/.config/alacritty
wget https://raw.githubusercontent.com/alacritty/alacritty/master/alacritty.yml $HOME/.config/alacritty/
#	move configuration
# mv alacritty $HOME/.config/
