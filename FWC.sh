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
	echo "Nothing:"
fi

}

#Input argument

if [ -n "$1" ]; then 
	echo "Input found!"
else
	echo "{ERROR} Input not found"
	exit 1
fi

#Does File ECT exist?

if ! test -f "$1"; then
       echo "File does not exist!"
	exit 1 
fi 

while read line; do
	log_scan "$line"
done < "$1"

echo "--SCAN DONE!--"
echo "hello: $hello"
echo "goodbye: $goodbye"


