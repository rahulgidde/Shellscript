#!/bin/bash -x

#USER INPUT
read -p "Enter The Single Digit" digit

#PRINT SINGLE DIGIT NUMBER IN WORD
if [ $digit -eq 0 ]
then
	echo "ZERO"
elif [ $digit -eq 1 ]
then
	echo "ONE"
elif [ $digit -eq 2 ]
then
	echo "TWO"
elif [ $digit -eq 3 ]
then
	echo "THREE"
elif [ $digit -eq 4 ]
then
	echo "FOUR"
elif [ $digit -eq 5 ]
then
	echo "FIVE"
elif [ $digit -eq 6 ]
then
	echo "SIX"
elif [ $digit -eq 7 ]
then
	echo "SEVEN"
elif [ $digit -eq 8 ]
then
	echo "EIGHT"
elif [ $digit -eq 9 ]
then
	echo "NINE"
else
	echo "Invalid Number"
fi
