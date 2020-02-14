#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter the Number: " number

#DISPLAYING THE AVALIABLE CHOICE
echo "1.Feet to Inch"
echo "2.Inch to Feet"
echo "3.Feet to Meter"
echo "4.Meter to Feet"

#GET CHOICE FROM USER
read -p "Enter Your Choice: " choice

case $choice in
	1)
		echo "Convertion From Feet To Inch:"
		echo "scale=1;$number*12" | bc
		;;
	2)
		echo "Convertion From Inch To Feet:"
		echo "scale=2;$number/12" | bc
		;;
	3)
		echo "Convertion From Feet To Meter:"
		echo "scale=2;$number*0.3048" | bc
		;;
	4)
		echo "Convertion From Meter To Feet:"
		echo "scal=2;$number/0.3048" | bc
		;;
	*)
		echo "Invalid choice:"
		;;
esac
