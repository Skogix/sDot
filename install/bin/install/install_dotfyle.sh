#!/bin/bash

# Download the dotfyle script to the local bin directory
curl -o ~/.local/bin/dotfyle https://raw.githubusercontent.com/RoryNesbitt/dotfyle-cli/main/dotfyle

# Make the script executable
chmod +x ~/.local/bin/dotfyle

echo "dotfyle has been installed successfully."
