#!/bin/bash

error=0
warning=0
failed=0
found=0
missing=0
lines_total=0

mec_fn() {
        local cmt="$1"
        if [[ "$cmt" == *error* ]]; then
                echo "{ERROR}"
                ((error++))
        elif [[ "$cmt" == *warning* ]]; then
                echo "{WARNING}"
                ((warning++))
        elif [[ "$cmt" == *failed* ]]; then
                echo "{FAILED}"
                ((failed++))
        else
                echo "[CLEAR]!!! :D"
        fi
}

if [[ "$#" -lt 1 ]]; then
        echo "Give atleast one input/file!"
        exit 1
fi
for file in "$@"; do
        if [[ -e "$file" ]]; then
                echo "File found:"
                ((found++))
        else
                echo "File missing:"
                ((missing++))
        fi
done

for file in "$@"; do
        if [[ ! -f "$file" ]]; then
continue
        fi
                while read line; do
                        mec_fn "$line"
                        ((lines_total++))
                done < "$file"
        done

        timestamp=$(date)
        echo "==SCAN DONE!== $timestamp" | tee report.txt
        echo "error: $error" | tee -a report.txt
        echo "warning: $warning" | tee -a report.txt
        echo "failed: $failed" | tee -a report.txt
        echo "lines scanned: $lines_total" | tee -a report.txt
        echo "found: $found"
        echo "missing: $missing"
	
