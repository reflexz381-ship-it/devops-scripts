#1bin/bash

log_scan() {
	local msg="$1"
if [[ "$msg" == "error" ]]; then
       echo "ERROR FOUND!"
elif [[ "$msg" == "warning" ]]; then 
 	echo "WARNING FOUND!"
elif [[ "$msg" == "virus" ]]; then 
	echo "VIRUS FOUND!"
else 	
	echo "SPEAK RIGHT"
fi 
}

echo -n "ENTER a log message!: "
read log 
log_scan "$log"
