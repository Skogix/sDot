#!/bin/bash

#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "[skogix]: Usage: $0 <folder-path>"
    exit 1
fi

# Get the folder path from the argument
FOLDER_PATH=$1

# Extract the folder name
FOLDER_NAME=$(basename "$FOLDER_PATH")

# Determine the destination path within the stow directory, relative to $HOME
DEST_PATH=~/dot/stow/${FOLDER_PATH#"$HOME/"}

# Create the destination directory if it doesn't exist
echo "[skogix]: Creating destination directory if it doesn't exist"
mkdir -p "$(dirname "$DEST_PATH")"

# Move the folder to the correct location in the stow directory
echo "[skogix]: Moving folder to stow directory"
mv "$FOLDER_PATH" "$DEST_PATH"

# Change to the dotfiles directory
echo "[skogix]: Changing to the dotfiles directory at ~/dot"
cd ~/dot || { echo "[skogix]: Failed to change directory to ~/dot"; exit 1; }

# Use the stow_folder script to stow the moved folder
echo "[skogix]: Stowing the moved folder"
~/dot/stow/bin/stow_folder.sh --dotfiles "$FOLDER_NAME"
