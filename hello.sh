#!/bin/bash

echo "How much money do u have?"
read money

echo "How much did u keep after spending it?"
read spend 

echo "Did you keep some money? (y/n)"
read asnwer 

if [ "$answer" = "y" ]; then 
	echo "Alright!"
elif [ "$answer" = "n" ]; then 
	echo "Why? not smart"
fi

balance=$(($money - $spend))

if [ $balance -lt 10 ]; then
	echo "WHY DID YOU NOT SAVE?!"
elif [ $balance -gt 100 ]; then 
	echo "Glad you saved some money! :D"
else 
	echo "Hey speak my code"
fi

EXAMPLE TAKE AWAY WHEN SO 

ERROR
error
eRrOr

