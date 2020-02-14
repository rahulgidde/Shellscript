#!/bin/bash

#USER INPUT
read -p  "Enter The Number:" number

#PRINT THE NUMBER IN WORD
if [ $number -eq 1 ]
then
	echo "Unit"
elif [ $number -eq 10 ]
then
	echo "Ten"
elif [ $number -eq 100 ]
then
	echo "Hundred"
elif [ $number -eq 1000 ]
then
	echo "Thousand"
else
	echo "Invalid Number:"
fi
