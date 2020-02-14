#!/bin/bash -x

# USER INPUT
read -p "Enter First Number: " number1
read -p "Enter Second Number: " number2
read -p "Enter Third Number: " number3

#FIND MINIMUM NUMBER
if [ $number1 -lt $number2 ]  && [ $number1 -lt $number3 ]
then
	echo "Minimum Number is: $number1"
elif [ $number2 -lt $number1 ] && [ $number2 -lt $number3 ]
then
	echo "Minimum Number is: $number2"
elif [$number3 -lt $number1 ] && [ $number3 -lt $number2 ]
then
	echo "Minimum Number is: $number3"
fi

#FIND MAXIMUM NUMBER
if [ $number1 -gt $number2 ] && [ $number1 -gt $number3 ]
then
	echo "Maximum Number is: $number1"
elif [ $number1 -gt $number1 ] && [ $number2 -gt $number3 ]
then
	echo "Maximum Number is: $number2"
else
	echo "Maximum Number is: $number3"
fi

#ARITHMETIC OPERATIONS
result1=$(( number1 + number2 * number3 ))
echo result1=$result1
result2=$(( number1 % number2 + number3 ))
echo result2=$result2
result3=$(( number3 + number1 / number2 ))
echo rsult3=$result3
result4=$(( number1 * number2 + number3 ))
echo result4=$result4
