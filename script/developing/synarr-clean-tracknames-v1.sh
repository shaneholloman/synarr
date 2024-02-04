#!/bin/bash

# Wipe clean all the crap track names that Synology Video Station or Users add to MKV files

# Define the directory containing your media library
LIBRARY_PATH="/volume1/data/media/"

# Find all MKV files and remove track names
find "$LIBRARY_PATH" -type f -name "*.mkv" -exec sh -c '
  for file do
    mkvpropedit "$file" \
    --edit track:v1 --delete name \
    --edit track:a1 --delete name \
    --edit track:s1 --delete name
    echo "Removed track names from $file"
  done
' sh {} +
