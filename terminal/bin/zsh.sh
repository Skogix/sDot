#!/bin/zsh

#!/bin/zsh

# [skogix]: Check if .zshrc is a symbolic link and remove it
if [ -L "$HOME/.zshrc" ]; then
    echo "[skogix]: Removing existing .zshrc symlink"
    rm "$HOME/.zshrc"
fi

# [skogix]: Create a new symbolic link for .zshrc
echo "[skogix]: Creating new symlink for .zshrc"
ln -s "$HOME/.config/zsh/zshrc" "$HOME/.zshrc"
