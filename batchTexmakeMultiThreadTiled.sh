#!/bin/bash
# O. Tange (2011): GNU Parallel - The Command-Line Power Tool
# Define the target directory
cwd=$(pwd)

# Check if the target is not a directory
if [ ! -d "$cwd" ]; then
  exit 1
fi

# Function to process a single file
process_file() {
  file="$1"
  filename=$(basename -- "$file")
  extension="${file##*.}"
  filename="${file%.*}"
  txmake -mode periodic -format openexr -newer "$file" "$filename.tex"
  echo "$file processed"
}

export -f process_file

# Use GNU Parallel to parallelize the processing
find "$cwd" -type f -name "*.exr" | parallel --jobs "35" process_file

