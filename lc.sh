#!/bin/bash

echo -n "Enter a log message:"
read log

echo "----------------------------"
echo "Processing you're input..."
echo "----------------------------"

if echo "$log" | grep -iq "error"; then 
	echo "ERROR detected in log!"
elif echo "$log" | grep -iq "warning"; then
	echo "Warning found in log!"
elif echo "$log" | grep iq "success"; then 
	echo "Operation successful"
else
	echo "No important keywords found"
fi

