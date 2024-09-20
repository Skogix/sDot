#!/bin/bash

# Check if GNU Stow is installed
if ! command -v stow &> /dev/null; then
    echo "[skogix]: GNU Stow is not installed. Please install it first."
    exit 1
fi

# Ensure the dotfiles directory exists
echo "[skogix]: Ensuring the dotfiles directory exists at ~/dot"
mkdir -p ~/dot

# Change to the dotfiles directory
echo "[skogix]: Changing to the dotfiles directory at ~/dot"
cd ~/dot || { echo "Failed to change directory to ~/dot"; exit 1; }

# Stow all modules
echo "[skogix]: Stowing all modules in the dotfiles directory"
for module in */; do
    echo "[skogix]: Stowing module: $(basename "$module")"
    stow --restow --dotfiles --target="$HOME" --verbose=3 "$(basename "$module")"
done

echo "[skogix]: Dotfiles installation completed."
