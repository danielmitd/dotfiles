umask 002

# Load the other dotfiles
for file in ~/dots/.{prompt,exports,aliases,paths}; do
    [ -r "$file" ] && source "$file"
done
unset file