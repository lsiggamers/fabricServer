#!/bin/bash

# Check if a destination folder was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <destination-folder>"
    exit 1
fi

DEST="$1"

# Create folder if it doesn't exist
mkdir -p "$DEST"

# Move all .jar files
mv ./*.jar "$DEST" 2>/dev/null

echo "All .jar files moved to: $DEST"