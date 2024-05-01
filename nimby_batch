#!/bin/bash
# Basic range in for loop
counter=0
for value in {1..2880}
	do
	echo "Counter: $counter"
     	counter=$[$counter +1]
	now=$(date +"%T")
	echo "Current time : $now"
	echo "nimby activated"
	yes | nimby
	echo "retired"
	sleep 30
	done
	echo All done
