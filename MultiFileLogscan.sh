#!/bin/bash

error=0
critical=0
warning=0
crash=0

multi_fls() {
        local msg="$1"
if [[ "$msg" == *error* ]]; then
        echo "Error log found!"
        ((error++))
elif [[ "$msg" == *critical* ]]; then
        echo "Critical log found!"
        ((critical++))
elif [[ "$msg" == *warning* ]]; then
        echo "Warning log found!"
        ((warning++))
elif [[ "$msg" == *crash* ]]; then
        echo "Crash log found!"
        ((crash++))
else
        echo "CLEAR!"
fi

}

found=0
missing=0

if [[ "$#" -lt 1 ]]; then
        echo "Give atleast one file too logscan."
        exit 1
fi

for file in "$@"; do
        if [[ -e "$file" ]]; then
                echo "File found"
                ((found++))
        else
                echo "File missing"
                ((missing++))
        fi
done

for file in "$@"; do
if [[ ! -f "$file" ]]; then
                continue
        fi
        while read line; do
                multi_fls "$line"
        done < "$file"
done

timestamp=$(date)
echo "===MultiFileLogscan done!=== $timestamp" | tee report.txt
echo "error: $error" | tee -a report.txt
echo "critical: $critical" | tee -a report.txt
echo "warning: $warning" | tee -a report.txt
echo "crash: $crash" | tee -a report.txt

echo "found: $found"
echo "missing: $missing"
