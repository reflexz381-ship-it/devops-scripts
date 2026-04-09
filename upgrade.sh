#!/bin/bash

warning=0
error=0

log_scan() {
        local msg="$1"
if [[ "$msg" == *warning* ]]; then
        echo "Warnings found o-o"
        ((warning++))
elif [[ "$msg" == *error* ]]; then
        echo "Errors found!!!"
        ((error++))
else
        echo "CLEAR/NOTHING:"
fi

}

if [[ -n "$1" ]]; then
        echo "Input argument found!"
else
        echo "Input argument not found!!!"
        exit 1
fi

if [[ ! -f "$1" ]]; then
        echo "File not found!!!"
        exit 1
fi

while read line; do
        log_scan "$line"
done < "$1"

echo "==SCAN FINISHED!==" | tee report.txt
echo "warning: $warning" | tee -a report.txt
echo "error: $error" | tee -a report.txt

