#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <folder-path>"
    exit 1
fi

# Get the folder path from the argument
FOLDER_PATH=$1

# Extract the folder name
FOLDER_NAME=$(basename "$FOLDER_PATH")

# Determine the destination path within the stow directory, relative to $HOME
DEST_PATH=~/dot/stow/${FOLDER_PATH#"$HOME/"}

# Create the destination directory if it doesn't exist
mkdir -p "$(dirname "$DEST_PATH")"

# Move the folder to the correct location in the stow directory
mv "$FOLDER_PATH" "$DEST_PATH"

# Use the stow_folder script to stow the moved folder
~/dot/stow/bin/stow_folder.sh "$FOLDER_NAME"
