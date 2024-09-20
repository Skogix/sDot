#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <folder-name>"
    exit 1
fi

# Get the folder name from the argument
FOLDER_NAME=$1

# Change to the dotfiles directory
cd ~/dot || exit

# Use GNU Stow to create symlinks for the specified folder
stow --target="$HOME" --dir=~/dot "$FOLDER_NAME"
