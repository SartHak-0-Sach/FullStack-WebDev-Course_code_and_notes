#!/bin/bash

# Parent directory path
parent_directory="C:/Users/saksh/OneDrive/Desktop/github/cwh-web-dev-playlist_code_and_notes"

# Source directory to copy from
source_directory="$parent_directory/lecture-001"

# Loop to copy contents to all other folders
for folder in "$parent_directory"/*/; do
    if [ "$folder" != "$source_directory" ]; then
        destination="${folder%?}"  # Removing trailing "/"
        cp -r "$source_directory"/* "$destination"
        echo "Copied contents of lecture-001 to $destination"
    fi
done