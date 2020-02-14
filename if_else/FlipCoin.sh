#!/bin/bash -x

#VARIABLE
isFlip=1

#STORE RANDOM VALUE TO CHECK HEAD OR TAIL
randomcheck=$((RANDOM%2))
if [ $randomcheck -eq $isFlip ]
then
	echo Head
else
	echo Tail
fi
