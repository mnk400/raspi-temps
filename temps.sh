#!/bin/bash

temp_c=$(vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')

temp_f=$(echo "scale=1;(9/5)*$temp_c+32" | bc -l)

if [ "$1" == "-f" ]; then
	if [ "$2" == "-v" ]; then
		echo "$temp_f"
	else	
		echo "Current temperatute is $temp_f degrees Fahrenheit"
	fi	
else
	if [ "$2" == "-v" ]; then
		echo "$temp_c"
	else	
		echo "Current temperature is $temp_c degrees Celsius"
	fi	
fi	