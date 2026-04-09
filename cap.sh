#!/bin/bash 

echo "How much did u get for you're car that u sold?"
read sold_car

echo "Are you happy you sold it? (Yes/No)?"
read response_YN

if [ $sold_car -lt 100000 ]; then 
	echo "YOU SOLD IT FOR SO LOW PRICE?!"
elif [ $response_YN = "Yes" ]; then 
	echo "Good"
elif [ $response_YN = "No" ]; then 
	echo "No? okay."
fi
