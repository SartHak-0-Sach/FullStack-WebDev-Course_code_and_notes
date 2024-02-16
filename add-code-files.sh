#!/bin/bash

# Parent directory path
parent_directory="C:/Users/saksh/OneDrive/Desktop/github/cwh-web-dev-playlist_code_and_notes"

# Source directory to copy from
source_directory="$parent_directory/lecture-001"

# Loop through all folders except lecture-001
for directory in "$parent_directory"/*/; do
    if [ "$directory" != "$source_directory" ]; then
        destination="${directory%?}"  # Removing trailing "/"
        rsync -av "$source_directory/" "$destination"
        echo "Copied contents of lecture-001 to $destination"
    fi
done
