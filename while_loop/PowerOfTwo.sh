#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter Number: " number

#VARIABLE
power=1

#CALCULATE POWER OF 2 UNTILL IT BECOMES 256
while [ $number -ne 0 ]
do
	power=$(($power*2))
   ((number--))
	if [ $power -eq 256 ]
	then
		break
	fi
done


