#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter First Number: " number1
read -p "Enter Second Number: " number2

#FUNCTION FOR CHECK PALINDROME
function palindrom()
{
	number=$1
	temp=$number
	sum=0
	while [ $number -gt 0 ]
	do
		remainder=$(($number%10))
		sum=$(( $(($sum*10)) + $remainder))
		number=$(($number/10))
	done
	if [ $temp -eq $sum ]
	then
		echo "Number is Palindrom: $temp"
	else
		echo "Number is not Paliendrom: $temp"
	fi
}

#FUNCTION CALL
palindrom $number1
palindrom $number2

