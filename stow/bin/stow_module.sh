#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <module-name>"
    exit 1
fi

echo "Starting the stow process for module: $1"

# Get the module name from the argument
MODULE_NAME=$1

# Ensure the dotfiles directory exists
echo "Ensuring the dotfiles directory exists at ~/dot"
mkdir -p ~/dot

# Change to the dotfiles directory
echo "Changing to the dotfiles directory at ~/dot"
cd ~/dot || { echo "Failed to change directory to ~/dot"; exit 1; }

# Use GNU Stow to create symlinks for the specified module
echo "Using GNU Stow to create symlinks for $MODULE_NAME in the home directory"
stow -R --dotfiles --target="$MODULE_NAME" "$MODULE_NAME" -v
echo "Stow process completed for module: $MODULE_NAME"
