#!/bin/bash

# Create the logs directory if it doesn't exist
mkdir -p ~/logs

# Find all broken symlinks and save them to the log file
find / -xtype l 2>/dev/null > ~/logs/broken_symlinks
