#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter The Number: " number

#DISPLAY DIGIT PLACE
case $number in
	1)
		echo "One"
		;;
	10)
		echo "Ten"
		;;
	100)
		echo "Hundared"
		;;
	1000)
		echo "Thausound"
		;;
	 *)
		echo "Enter Numbers 1, 10, 100 or 1000 only"
		;;
esac
