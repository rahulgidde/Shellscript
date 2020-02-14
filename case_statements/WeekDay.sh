#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter The Number Between 0 to 6: " number

#DISPLAY THE DAY IN WEEK
case $number in
	0)
		echo "Sunday"
		;;
	1)
		echo "Monday"
		;;
	2)
		echo  "Tuesday"
		;;
	3)
		echo  "Wednesday"
		;;
	4)
		echo  "Thursday"
		;;
	5)
		echo  "Friday"
		;;
	6)
		echo  "Saturday"
		;;
	*)
		echo  "Invalid Number:"
		;;
esac
