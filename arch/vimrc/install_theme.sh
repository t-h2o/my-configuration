#!/bin/bash

PATH_DOWNLOAD=$HOME/.vim/colors
LINK="https://raw.githubusercontent.com/Roboron3042/Cyberpunk-Neon/master/terminal-apps/vim/cyberpunk-neon.vim"

curl -OL $LINK
mkdir -p ~/.vim/colors
cp cyberpunk-neon.vim $PATH_DOWNLOAD
