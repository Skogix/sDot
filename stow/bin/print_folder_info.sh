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

# Print the folder name and path
echo "FOLDER_NAME: $FOLDER_NAME"
echo "FOLDER_PATH: $FOLDER_PATH"
