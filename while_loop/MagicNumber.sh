#!/bin/bash -x

#TAKE RANDOM MAGIC NUMBER
number=$((1+$RANDOM%100))

#VARIABLES
start=1
end=100

#FIND THE MAGIC NUMBER WHICH IS GUSSED BY THE USER
while [ $number -ne 0 ]
do
	mid=$(( $(($start+$end))/2))
	if [ $mid -eq $number ]
	then
		echo "Magic Number Is: $mid"
		break
	elif [ $number -gt $mid ]
	then
		((start++))
	elif [ $number -lt $mid ]
	then
		((end--))
	fi
done

