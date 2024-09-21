#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "[skogix]: Usage: $0 <file-path> <module-name>"
    exit 1
fi

# Get the file path and module name from the arguments
FILE_PATH=$1
MODULE_NAME=$2

# Determine the destination path within the module directory
DEST_PATH=~/dot/$MODULE_NAME/${FILE_PATH#"$HOME/"}

# Create the destination directory if it doesn't exist
mkdir -p "$(dirname "$DEST_PATH")"

# Move the file to the correct location in the module directory
mv "$FILE_PATH" "$DEST_PATH"

# Use GNU Stow to manage the symlinks for the module
cd ~/dot || { echo "Failed to change directory to ~/dot"; exit 1; }
stow --restow --dotfiles --target="$HOME" --verbose=3 "$MODULE_NAME"

echo "[skogix]: File added to module and stowed successfully."
