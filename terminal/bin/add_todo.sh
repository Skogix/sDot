#!/bin/bash

# Check if arguments are provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 [todo item]"
    exit 1
fi

# Join all arguments into a single string
todo_item="$*"

# Run the aider command with the formatted message
aider --message "add to todo.md: $todo_item"
