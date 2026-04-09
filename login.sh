#!/bin/bash

echo -n "How many cats did u get this month?"
read cats

amount=$(($cats))

if [ $amount -lt 0 ]; then 
	echo "0?"
elif [ $amount -gt 2 ]; then 
	echo "More then 2 cats?"
fi 
