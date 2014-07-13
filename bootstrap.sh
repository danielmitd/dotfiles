#!/usr/bin/env zsh

git remote update
git submodule update --init

l=('.zshrc' '.gitignore' '.gitconfig' '.vimrc' '.zlogout')
for file in $l; do
    [ ! -L ~/$file ] && ln -s ~/.dotfiles/$file ~/$file
done

source ~/.zshrc
