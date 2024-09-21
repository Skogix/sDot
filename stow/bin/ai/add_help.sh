#!/bin/bash

# Check if a term is provided
if [ -z "$1" ]; then
  echo "Usage: $0 [term]"
  exit 1
fi

# Create the help file
term="$1"
help_file="${term}.help"

# Check if the help file already exists
if [ -e "$help_file" ]; then
  echo "The help file '$help_file' already exists."
  exit 1
fi

# Create the help file with the output of [term] --help
{
  echo "Help for $term"
  echo "===================="
  echo ""
  echo "Description:"
  echo ""
  echo "Usage:"
  echo ""
  echo "Command Output:"
  echo ""
  $term --help
} > "$help_file"

echo "Help file '$help_file' created successfully."
