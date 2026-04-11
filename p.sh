#!/bin/bash 

hello=0
goodbye=0

log_scan() {
        local msg="$1"
if [[ "$msg" == *hello* ]]; then
        echo "Hello word found!"
        ((hello++))
elif [[ "$msg" == *goodbye* ]]; then
        echo "Goodbye word found!"
        ((goodbye++))
else
        echo "Nothing found:"
fi

}

if [ -n "$1" ]; then
        echo "Input found!"
else
        echo "No input found :C"
        exit 1
fi

if ! test -f "$1"; then
        echo "File does not exist! O-O"
        exit 1
fi

while read line; do
        log_scan "$line"
done < "$1"

echo "==SCAN DONE=="
echo "hello: $hello"
echo "goodbye: $goodbye"

