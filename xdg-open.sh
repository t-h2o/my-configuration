#!/bin/sh

# get the filetype of a filetype
xdg-mime query filetype README.adoc

# get the default program of a filetype
xdg-mime query default text/plain

# vim as default program
xdg-mime default vim.desktop text/plain
