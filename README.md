# Shell Script File Processing Bug

This repository demonstrates a common, yet subtle, bug in shell scripting related to file processing.  The script attempts to iterate over a list of files and process them, but it contains a flaw in how it handles the iteration, leading to potential errors.

## Bug Description

The primary issue lies within the `for` loop. The script iterates over the array using string iteration instead of index based iteration. This causes issues when filenames contain spaces or special characters, and can lead to unexpected behavior or failure to find the files.

## Solution

A corrected version of the script utilizes proper array index iteration to correctly process the files, avoiding potential errors.

## How to Reproduce

1. Clone this repository.
2. Run the `bug.sh` script. Note that it may not process the files correctly.
3. Run the `bugSolution.sh` script. Observe the corrected output.