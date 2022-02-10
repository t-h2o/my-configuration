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

###	Install grammalecte
	mkdir grammalecte
	cd grammalecte
	wget https://grammalecte.net/grammalecte/zip/Grammalecte-fr-v2.0.0.zip
	unzip Grammalecte-fr-v2.0.0.zip
	cd ..
	mv grammalecte $HOME/.local/share/
