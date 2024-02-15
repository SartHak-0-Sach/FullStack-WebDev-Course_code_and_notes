#!/bin/bash

# Parent directory path
parent_directory="C:/Users/saksh/OneDrive/Desktop/github/cwh-web-dev-playlist_code_and_notes"

# Delete code.cpp files
find "$parent_directory" -type f -name "code.cpp" -delete

echo "Deleted all code.cpp files within $parent_directory and its subdirectories."

