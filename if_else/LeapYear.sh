#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter Year:" year

#TO CHECK YEAR IS LEAP YEAR OR NOT
if [ $year -gt 999 -a $year -le 9999 ]
then
	if [ $((year%4)) -eq 0 ]
	then
		if [ $((year%100)) -eq 0 ]
		then
			if [ $((year%400)) -eq 0 ]
			then
				echo "$year Is Leap Year"
			else
				echo "$year Is Not Leap Year"
			fi
		else
			echo "$year Is Leap Year"
		fi
	else
		echo "$year Is Not Leap Year"
	fi
else
	echo "Enter Four Digit Year"
fi
