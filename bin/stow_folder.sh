#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <folder-name>"
    exit 1
fi

echo "Starting the stow process for folder: $1"

# Get the folder name from the argument
FOLDER_NAME=$1

# Ensure the dotfiles directory exists
echo "Ensuring the dotfiles directory exists at ~/dot"
mkdir -p ~/dot

# Change to the dotfiles directory
echo "Changing to the dotfiles directory at ~/dot"
cd ~/dot || { echo "Failed to change directory to ~/dot"; exit 1; }

# Use GNU Stow to create symlinks for the specified folder
echo "Using GNU Stow to create symlinks for $FOLDER_NAME in the home directory"
stow --dotfiles --target="$HOME/$FOLDER_NAME" --dir=~/dot "$FOLDER_NAME"
echo "Stow process completed for folder: $FOLDER_NAME"
