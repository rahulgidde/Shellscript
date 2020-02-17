#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter Starting Number: " number

#VARIABLE
range=100

#CALCULATING NUMBERS WHOSE DIGITS ARE SAME
while [ $number -ne $range ]
do
	number1=$number
	temp=$number
	sum=0
	if [ $(($number1/10)) -eq 0 ]
	then
		((number++))
	else
		while [ $number1 -ne 0 ]
		do
			remainder=$(($number1%10))
			sum=$(( $(($sum*10)) +$remainder ))
			number1=$(($number1/10))
		done
		if [ $temp -eq $sum ]
		then
			Array[((count++))]=$sum
			((number++))
		else
			((number++))
		fi
	fi
done

#PRINT ARRAY
echo ${Array[@]}
