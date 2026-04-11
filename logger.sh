#1bin/bash

echo -n "Enter a log message!"
read log

echo "---------------------------------"
echo "Waiting for output to be made! :D"
echo "---------------------------------"

if echo "$log" | grep -iq "error"; then
        echo "ERROR FOUND!"
elif echo "$log" | grep -iq "warning"; then
        echo "WARNING FOUND!"
elif echo "$log" | grep -iq "virus"; then
       echo "VIRUS FOUND!"
else 
        echo "SPEAK RIGHT!!!"

fi

