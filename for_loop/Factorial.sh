#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter Number: " number

#VARIABLE
factorial=1

#CALCULATING FACTORIAL OF NUMBER
for (( index=1; index<=number; index++ ))
do
	factorial=$(($factorial*$index))
done

# DISPLAY RESULT
echo "Factorial Of Number $number=$factorial"
