#!/bin/bash

#!/bin/bash

# [skogix]: Check if a term is provided
if [ -z "$1" ]; then
  echo "[skogix]: Usage: $0 [term]"
  exit 1
fi

# [skogix]: Create the help file
term="$1"
help_file="${term}.help"

# [skogix]: Remove the existing help file if it exists
if [ -e "$help_file" ]; then
  echo "[skogix]: Removing existing help file"
  rm "$help_file"
fi

# [skogix]: Create a new help file with the command output
echo "[skogix]: Creating new help file with command output"
{
  echo "[skogix]: Command Output:"
  echo ""
  $term --help
} > "$help_file"

echo "[skogix]: Help file '$help_file' created successfully."
