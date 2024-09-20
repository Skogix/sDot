#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <module-name>"
    exit 1
fi

# Get the module name from the argument
MODULE_NAME=$1

# Ensure the dotfiles directory exists
echo "Ensuring the dotfiles directory exists at ~/dot"
mkdir -p ~/dot

# Change to the dotfiles directory
echo "Changing to the dotfiles directory at ~/dot"
cd ~/dot || { echo "Failed to change directory to ~/dot"; exit 1; }

# Use GNU Stow to delete symlinks for the specified module
echo "Using GNU Stow to delete symlinks for $MODULE_NAME in the home directory"
stow --delete --dotfiles --target="$HOME" --verbose=3 "$MODULE_NAME"
echo "Delete process completed for module: $MODULE_NAME"
