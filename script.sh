#!/bin/bash
 
# Enter the folder where the files are located
cd /path/to/folder
 
# Define the search term
search_term="your_search_term_here"
 
# Loop through each file in the folder
for file in *; do
    # Check if the file is a regular file and not a directory
    if [[ -f $file ]]; then
        # Use grep to search for the search term in the file
        if grep -q "$search_term" "$file"; then
            # If the search term is found, print the filename and line number
            echo "Found '$search_term' in $file:"
            grep -n "$search_term" "$file"
        fi
    fi
done