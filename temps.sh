#!/bin/bash

	var=$(($var+1))
	temp_c=$(vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')
	temp_f=$(echo "scale=1;(9/5)*$temp_c+32" | bc -l)

	if [ "$1" == "-f" ]; then
		if [ "$2" == "-v" ]; then
			if [ "$3" == "-r" ]; then
				while true
				do
				echo "$temp_f"
				sleep 2
				done
			else
				echo "$temp_f"
			fi	
		else
			if [ "$2" == "-r" ]; then
				while true
				do
				echo "Current temperatute is $temp_f degrees Fahrenheit"
				sleep 2
				done
			else
				echo "Current temperatute is $temp_f degrees Fahrenheit"	
			fi	
		fi	
	else
		if [ "$1" == "-v" ]; then
			if [ "$2" == "-r" ]; then
				while true
				do
				echo "$temp_c"
				sleep 2
				done
			else
				echo "$temp_c"
			fi	
		else
			if [ "$1" == "-r" ]; then
				while true
				do
				echo "Current temperature is $temp_c degrees Celsius"
				sleep 2
				done		
			else
				echo "Current temperature is $temp_c degrees Celsius"
			fi		
		fi	
	fi
