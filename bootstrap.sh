#!/usr/bin/env zsh

# core files
for file in .{zshrc,gitignore,gitconfig,vimrc,zlogout}; do
    [ ! -f ~/$file ] && cp ./$file ~/$file
done

# extends files
[ ! -d ~/.dotfiles ] && mkdir ~/.dotfiles
for file in .{aliases,exports,keys,paths,prompt}; do
    [ ! -f ~/.dotfiles/$file ] && cp ./$file ~/.dotfiles/$file
done

# Prompt for github credentials
if read -q '?want to setup for github[y/N]:'; then
    read $'author?\ngithub author: '
    read 'email?github email: '

    git config --global user.name "$author"
    git config --global user.email "$email"
fi

source ~/.zshrc
