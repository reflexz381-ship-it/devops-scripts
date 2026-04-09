#!/bin/bash

if [[ "$#" -ne 3 ]]; then
        echo "Give 3 filenames to work!"
        exit 1
fi

missing=0
found=0

for file in "$@"; do
        if [[ -e "$file" ]]; then
               echo "File found!"
                ((found++))
        else
                echo "File missing!"
                ((missing++))
        fi
done

echo "SCAN DONE"
echo "missing: $missing"
echo "found: $found"

