#!/bin/bash

# This script attempts to process a list of files, but it has a subtle bug.
# The problem lies in how it handles the loop and file processing.

files=( "file1.txt" "file2.txt" "file3.txt" )

for i in "${files[@]}"; do
  # The issue is here: this should be done with an array index, not a string
  if [ -f "$i" ]; then
    echo "Processing: $i"
    # ... some file processing ...
  else
    echo "Error: File '$i' not found"
  fi

done