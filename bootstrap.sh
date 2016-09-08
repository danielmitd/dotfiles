#!/usr/bin/env zsh

for file in .{zshrc,gitignore,gitconfig,vimrc,zlogout}; do
    [ ! -f ~/$file ] && cp ~/.dotfiles/$file ~/$file
done

# Prompt for github credentials
if read -q '?want to setup for github[y/N]:'; then
    read $'author?\ngithub author: '
    read 'email?github email: '

    git config --global user.name "$author"
    git config --global user.email "$email"
fi

source ~/.zshrc
