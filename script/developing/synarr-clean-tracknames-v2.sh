#!/bin/bash

# Step 1: Check if mkvpropedit is available
if ! command -v mkvpropedit &> /dev/null
then
    echo "mkvpropedit could not be found, attempting to install mkvtoolnix from SynoCommunity (https://synocommunity.com/package/mkvtoolnix)..."
    # The following line is pseudo-code and would need to be replaced with a command that can install packages
    # on Synology via the command line, if such a command exists.
    # synopkg install mkvtoolnix
    exit 1
else
    echo "mkvpropedit is installed, proceeding to step 2."
fi

# Define a function to remove track names
remove_track_names() {
    local file="$1"
    local tracks
    tracks=$(mkvinfo "$file" | grep -Po 'Track number: \K\d+')
    for track in $tracks; do
        local track_name
        track_name=$(mkvinfo "$file" | grep -A2 "Track number: $track" | grep -Po 'Name: \K.+')
        if [[ -n "$track_name" ]]; then
            echo "Removing track name: $track_name from $file"
            mkvpropedit "$file" --edit track:"$track" --delete name
        fi
    done
}

# Step 2: Check if LIBRARY_PATH exists
LIBRARY_PATH="/volume1/data/media/movies"
if [ -d "$LIBRARY_PATH" ]; then
    read -p "Is $LIBRARY_PATH your movie and tv directory? (y/n): " -n 1 -r
    echo    # move to a new line
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Please specify your movie and tv directory: "
        read -r LIBRARY_PATH
    fi
else
    echo "The path $LIBRARY_PATH does not exist. Please specify your movie and tv directory: "
    read -r LIBRARY_PATH
fi

# Step 3: Find all MKV files and remove track names
find "$LIBRARY_PATH" -type f -name "*.mkv" -exec bash -c 'remove_track_names "$0"' {} \;

echo "Track names removal process completed."
