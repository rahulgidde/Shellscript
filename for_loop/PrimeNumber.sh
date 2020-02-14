#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter Number: " number

#INITIALIZING VARIABLE
flag=0

# CALCULATE TO FIND NUMBER IS PRIME OR NOT
for (( index=2; index<$number; index++ ))
do
	if [ $(($number%$index)) -eq 0 ]
	then
		(( flag++ ))
		break
	fi
done
if [ $flag != 0 ]
then
	echo "$number Is Not Prime Number"
else
	echo "$number Is Prime Number:"
fi
