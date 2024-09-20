#!/bin/zsh

if [ -L "$HOME/.zshrc" ]; then
    rm "$HOME/.zshrc"
fi

ln -s "$HOME/.config/zsh/zshrc" "$HOME/.zshrc"
