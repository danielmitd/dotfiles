umask 002

# Load the other dotfiles
for file in ~/.dotfiles/.{keys,prompt,exports,aliases,paths,completion}; do
    [ -r "$file" ] && source "$file"
done
unset file

. ~/.dotfiles/z/z.sh
