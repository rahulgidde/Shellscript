#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter The Number Between 0 to 9: " number

#DISPLAY THE DAY IN WEEK
case $number in
	1)
		echo "One"
		;;
	2)
		echo "Two"
		;;
	3)
		echo "Three"
		;;
	4)
		echo "Four"
		;;
	5)
		echo "Five"
		;;
	6)
		echo "Six"
		;;
	7)
		echo "Seven"
		;;
	8)
		echo "Eight"
		;;
	9)
		echo "Nine"
		;;
	*)
		echo  "Invalid Number:"
		;;
esac
