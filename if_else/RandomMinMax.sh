#!/bin/bash -x

#STORE 3 DIGIT RANDOM NUMBERS IN VARIABLES
number1=$((RANDOM%900+100))
number2=$((RANDOM%900+100))
number3=$((RANDOM%900+100))
number4=$((RANDOM%900+100))
number5=$((RANDOM%900+100))

#FIND MAXIMUM RANDOM NUMBER
if [ $number1 -gt $number2 -a $number1 -gt $number3 -a $number1 -gt $number4 -a $number1 -gt $number5 ]
then
	maximum=$r1
elif [ $number2 -gt $number3 -a $number2 -gt $number4 -a $number2 -gt $number5 ]
then
	maximum=$number2
elif [ $number3 -gt $number4 -a $number3 -gt $number5 ]
then
	maximum=$number3
elif [ $number4 -gt $number5 ]
then
	maximum=$number4
else
	maximum=$number5
fi

#FIND MINIMUM RANDOM NUMBER
if [ $number1 -lt $number2 -a $number1 -lt $number3 -a $number1 -lt $number4 -a $number1 -lt $number5 ]
then
	minimum=$number1
elif [ $number2 -lt $number3 -a $number2 -lt $number4 -a $number2 -lt $number5 ]
then
	minimum=$number2
elif [ $number3 -lt $number4 -a $number3 -lt $number5 ]
then
	minimum=$number3
elif [ $number4 -lt $number5 ]
then
	minimum=$number4
else
	minimum=$number5
fi

#PRINT MINIMUM AND MAXIMUM RANDOM NUMBER
echo "Minimum Number Is $minimum"
echo "Maximum Number Is $maximum"
