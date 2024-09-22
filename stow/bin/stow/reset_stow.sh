#!/bin/bash

#!/bin/bash

# Directory containing the stow modules
STOW_DIR="$HOME/dot"
echo "[skogix]: Stow directory: $STOW_DIR"

# Unstow all modules
echo "[skogix]: Unstowing all modules..."
for module in $(find $STOW_DIR -mindepth 1 -maxdepth 1 -type d ! -name '.*'); do
    module_name=$(basename $module)
    echo "[skogix]: Unstowing module: $module_name"
    # Change to the dotfiles directory
    echo "[skogix]: Changing to the dotfiles directory at ~/dot"
    cd ~/dot || { echo "[skogix]: Failed to change directory to ~/dot"; exit 1; }

    stow -D $module_name -t $HOME
done

# Restow all modules
echo "[skogix]: Restowing all modules..."
for module in $(find $STOW_DIR -mindepth 1 -maxdepth 1 -type d ! -name '.*'); do
    module_name=$(basename $module)
    echo "[skogix]: Restowing module: $module_name"
    stow $module_name -t $HOME
done
