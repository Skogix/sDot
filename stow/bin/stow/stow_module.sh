#!/bin/bash

#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "[skogix]: Usage: $0 <module-name>"
    exit 1
fi

# Get the module name from the argument
MODULE_NAME=$1

# Change to the dotfiles directory
echo "[skogix]: Changing to the dotfiles directory at ~/dot"
cd ~/dot || { echo "[skogix]: Failed to change directory to ~/dot"; exit 1; }

# Use GNU Stow to create symlinks for the specified module
echo "[skogix]: Using GNU Stow to create symlinks for $MODULE_NAME in the home directory"
stow --restow --dotfiles --target="$HOME" --verbose=3 "$MODULE_NAME"
echo "[skogix]: Stow process completed for module: $MODULE_NAME"
