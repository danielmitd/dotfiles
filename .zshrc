umask 002

# Load the shell dotfiles, and then some:
for file in ~/.{bash_prompt,exports,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file
