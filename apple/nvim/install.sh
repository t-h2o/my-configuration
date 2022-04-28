#!/bin/bash
#
###	Install vim from github
ft_darwin_neovim () {
	echo install Neovim...
	brew install neovim
}

###	Move configuration files in the good directories
ft_move_dotfile () {
	DIR=$HOME"/.config"
	echo move dot files in $DIR
	cp -r ./nvim $DIR/
}


###	Install plugin for neovim
ft_install_plugin () {

	DIR=$HOME"/.local/share/nvim/site/autoload/"
	URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
	echo Download from : $URL
	echo in : $DIR
	echo
	echo ------------------------------------------------------------------
	echo
	mkdir -p $DIR
	curl $URL > $DIR"plug.vim"
}

### Install nodejs for darwin
ft_darwin_nodejs () {

	brew install nodejs
}

# ft_darwin_neovim
# ft_darwin_nodejs
# ft_move_dotfile
 ft_install_plugin
