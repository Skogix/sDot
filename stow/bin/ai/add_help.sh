#!/bin/bash

#!/bin/bash

# Check if a term is provided
if [ -z "$1" ]; then
  echo "[skogix]: Usage: $0 [term]"
  exit 1
fi

# Create the help file
term="$1"
help_file="${term}.help"
r
# Remove the existing help file if it exists
if [ -e "$help_file" ]; then
  echo "[skogix]: Removing existing help file"
  rm "$help_file"
fi

# Create a new help file with the command output
echo "[skogix]: Creating new help file with '$term --help' output"
{
  echo "[skogix]: '$term --help' Output:"
  echo ""
  $term --help
  echo ""
  # Fetch and append TLDR output for the term
  echo "[skogix]: TLDR Output:"
  echo ""
  tldr "$term"
} > "$help_file"

echo "[skogix]: Help file '$help_file' created successfully."
