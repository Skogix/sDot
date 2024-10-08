#!/bin/bash

# Unstow (delete) all modules in the ~/dot directory
echo "[skogix]: Unstowing all modules in the ~/dot directory:"

# Iterate over each directory in ~/dot
for module in ~/dot/*/; do
    # Check if the item is a directory
    if [ -d "$module" ]; then
        # Unstow the module
        echo "[skogix]: Unstowing $(basename "$module")"
        # Change to the dotfiles directory
        echo "[skogix]: Changing to the dotfiles directory at ~/dot"
        cd ~/dot || { echo "[skogix]: Failed to change directory to ~/dot"; exit 1; }

        stow --delete -d ~/dot -t ~ "$(basename "$module")"
    fi
done
