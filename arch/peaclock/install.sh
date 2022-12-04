#!/bin/sh

mkdir -p "$HOME"/.config/peaclock
cp config "$HOME"/.config/peaclock/
echo "Add this following alias into your bashrc, zshrc or your shellrc"
echo "alias peaclock=\"peaclock --config-dir ~/.config/peaclock\""
