#!/bin/bash

#!/bin/bash

# [skogix]: Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "[skogix]: Usage: $0 <folder-path> <module-name>"
    exit 1
fi

# [skogix]: Get the folder path and module name from the arguments
FOLDER_PATH=$1
MODULE_NAME=$2

# [skogix]: Determine the destination path within the module directory
DEST_PATH=~/dot/$MODULE_NAME/${FOLDER_PATH#"$HOME/"}

# [skogix]: Create the destination directory if it doesn't exist
echo "[skogix]: Creating destination directory if it doesn't exist"
mkdir -p "$(dirname "$DEST_PATH")"

# [skogix]: Move the folder to the correct location in the module directory
echo "[skogix]: Moving folder to module directory"
mv "$FOLDER_PATH" "$DEST_PATH"

# [skogix]: Use GNU Stow to manage the symlinks for the module
echo "[skogix]: Stowing the module"
cd ~/dot || { echo "[skogix]: Failed to change directory to ~/dot"; exit 1; }
stow --restow --dotfiles --target="$HOME" --verbose=3 "$MODULE_NAME"

echo "[skogix]: Folder added to module and stowed successfully."
