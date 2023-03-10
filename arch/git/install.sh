#!/bin/sh

cp -r git ~/.git
git config --global core.excludesfile "${HOME}/.git/gitignore"
