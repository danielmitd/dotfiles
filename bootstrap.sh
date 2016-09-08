#!/usr/bin/env zsh

for file in .{zshrc,gitignore,gitconfig,vimrc,zlogout,inputrc}; do
    [ ! -L ~/$file ] && ln -s ~/.dotfiles/$file ~/$file
done

# Prompt for github credentials
if read -q '?want to setup for github[y/N]:'; then
    read $'author?\ngithub author: '
    read 'email?github email: '

    cat <<-EOF > ~/.extra
		GIT_AUTHOR_NAME="$author"
		GIT_COMMITTER_NAME="$author"
		git config --global user.name "$author"
		GIT_AUTHOR_EMAIL="$email"
		GIT_COMMITTER_EMAIL="$email"
		git config --global user.email "$email"
	EOF
fi

source ~/.zshrc
