#!/bin/bash -x

#DISPLAY CHOICES
echo "1.Celcius To Fahrenhiet Conversion"
echo "2.Fahrenhiet To Celcius Conversion"

#TAKE USER INPUT FOR TEMPERATURE
read -p "Enter Your Choice: " number

#FUNCTION FOR CONVERT TEMPERATURE FROM CELCIUS TO FAHRENHIET
function  degF()
{
	number=$1
	degF=$(echo " scale=5; ($number * 9 / 5) + 32" | bc )
	echo $degF
}

#FUNCTION FOR CONVERT TEMPERATURE FROM FAHRENHIET TO CELCIUS
function degC()
{
	number=$1
	degC=$(echo "scale=5; ($number - 32) * 5 / 9" | bc )
	echo $degC
}

case $number in
	1)
		read -p "Enter The Number In Celcius: " number
		echo "Convertion Of Celcius To Fahrenheit: "
		degF number
		;;
	2)
		read -p "Enter The Number In Fahrenheit: " number
		echo "Convertion Of Fahrenheit to Celcius: "
		degC number
		;;
	*)
		echo "Invalid Choice:"
		;;
esac

