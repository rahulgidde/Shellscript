#!/bin/bash

#VARIABLES
stake=100
goal=200
win=0
bet=0

# CALCULATE BET COUNT AND WIN COUNT
while [ $stake -ne 0 ]
do
	((bet++))
	if [ $win -eq $goal ]
	then
		break
	fi
	if [ $((RANDOM%2)) -eq 1 ]
	then
		((stake++))
		((win++))
	else
		((stake--))
		((loss++))
	fi
done

#DISPLAY RESULT
echo "Number Of Times Win : $win"
echo "Number Of Bets: $bet"
echo "Satke Is: $stake"
