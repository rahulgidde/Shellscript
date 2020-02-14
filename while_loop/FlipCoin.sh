#!/bin/bash -x

#VARIABLES
number=50
Head=0
Tail=0

#CALCULATING COUNT OF HEADS AND TAILS
while [ $number -ne 0 ]
do
	if [ $((RANDOM%2)) -eq 1 ]
	then
		((Head++))
	else
		((Tail++))
	fi
	if [ $Head -eq 11 -o $Tail -eq 11 ]
	then
		break
	fi
done

#PRINT COUNT OF HEAD AND TAIL
echo "Number of Times Head : $Head"
echo "Number of Times Tail : $Tail"
