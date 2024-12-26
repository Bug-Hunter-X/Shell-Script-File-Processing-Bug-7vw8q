#!/bin/bash

# This script demonstrates the corrected approach to processing files.
# It uses proper array indexing to ensure correct iteration.

files=( "file1.txt" "file2.txt" "file3.txt" )

# Correctly iterate using array indices
for i in "${!files[@]}"; do
  file="${files[i]}"
  if [ -f "$file" ]; then
    echo "Processing: $file"
    # ... some file processing ...
  else
    echo "Error: File '$file' not found"
  fi
done