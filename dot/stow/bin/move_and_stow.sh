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

# Move the folder to the stow directory
mv "$FOLDER_PATH" ~/dot/stow/

# Change to the dot directory
cd ~/dot || exit

# Run stow on the moved folder
stow "$FOLDER_NAME"
