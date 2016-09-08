#!/usr/bin/env zsh

# Load the other dotfiles
for file in ~/.dotfiles/.{aliases,keys,prompt,exports,paths}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done
unset file

# add zsh completions if available
if [[ -d /usr/local/share/zsh-completions ]]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

if [[ -f /usr/local/etc/profile.d/z.sh ]]; then
    . /usr/local/etc/profile.d/z.sh
fi
