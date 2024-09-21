#!/bin/bash

# Navigate to the dot directory
cd ~/dot || exit

# Unstow all modules
for module in */; do
    stow --dotfiles --delete "${module%/}"
done

# Restow all modules
for module in */; do
    stow --dotfiles "${module%/}"
done
