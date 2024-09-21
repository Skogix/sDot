#!/bin/bash

#!/bin/bash

# [skogix]: List all directories in the ~/dot directory, which represent modules
echo "[skogix]: Listing all modules in the ~/dot directory:"

# Iterate over each directory in ~/dot
for module in ~/dot/*/; do
    # Check if the item is a directory
    if [ -d "$module" ]; then
        # Print the module name
        echo "[skogix]: $(basename "$module")"
        # Display the directory structure up to 3 levels deep
        tree -a -L 3 "$module"
    fi
done
