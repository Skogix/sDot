#!/bin/bash

# List all directories in the ~/dot directory, which represent modules
echo "[skogix]: Listing all modules in the ~/dot directory:"
for module in ~/dot/*/; do
    if [ -d "$module" ]; then
        echo "[skogix]: $(basename "$module")"
        tree -a "$module"
    fi
done
