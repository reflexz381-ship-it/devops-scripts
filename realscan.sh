#!/bin/bash

log_scan() {
	local msg="$1"
if [[ "$msg" == *error* ]]; then
	echo "ERROR FOUND!"
elif [[ "$msg" == *warning* ]]; then 
	echo "WARNING FOUND!"
elif [[ "$msg" == *virus* ]]; then 
	echo "VIRUS FOUND!"
else 
	echo "Nothing:"
fi
}

while read line; do 
	log_scan "$line"
done < logs.txt

