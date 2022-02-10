###	Install Neovim
	sudo apt install neovim

###	Move configuration files in the good directories
	DIR=$HOME"/.config"
	cp -r ./nvim $DIR/

###	Install plugin for neovim
	DIR=$HOME"/.local/share/nvim/site/autoload/"
	URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
	mkdir -p $DIR
	curl $URL > $DIR"plug.vim"


