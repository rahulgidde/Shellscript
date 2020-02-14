#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter The Number Between 0 to 6" number

#DISPLAY THE DAY IN WEEK
if [ $number -eq 0 ]
then
	echo "Sunday"
elif [ $number -eq 1 ]
then
	echo "Monday"
elif [ $number -eq 2 ]
then
	echo "Tuesday"
elif [ $number -eq 3 ]
then
	echo "Wednesday"
elif [ $number -eq 4 ]
then
	echo "Thursday"
elif [ $number -eq 5 ]
then
	echo "Friday"
elif [ $number -eq 6 ]
then
	echo "Saturday"
else
	echo "Invalid Number:"
fi
