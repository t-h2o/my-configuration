#!/bin/sh

###	Move the dot files
move_dot_files () {
	
	cp ./vimrc "$HOME"/.vimrc
	cp -r ./vim "$HOME"/.config/vim
	
}

###	Install plugin manager
install_plugin () {

	DIR=$HOME"/.vim/autoload/"
	URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
	echo Download from : $URL
	echo in : "$DIR"
	mkdir -p "$DIR"
	curl $URL > "$DIR""plug.vim"
	
}

###	Install a color theme
install_cyberpunk () {
	
	mkdir -p ~/.vim/colors
	PATH_DOWNLOAD="$HOME"/.vim/colors
	LINK="https://raw.githubusercontent.com/Roboron3042/Cyberpunk-Neon/master/terminal-apps/vim/cyberpunk-neon.vim"
	curl "$LINK" > "$PATH_DOWNLOAD"/cyberpunk-neon.vim
	
}

#	MAIN
main () {

	install_plugin
	move_dot_files
	# install_cyberpunk

}
