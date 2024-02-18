#!/bin/bash

# Check if the user has provided a file name
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "File not found: $1"
    exit 1
fi

# Append a comma at the end of every line in the file
while IFS= read -r line; do
    echo "${line},"
done < "$1"