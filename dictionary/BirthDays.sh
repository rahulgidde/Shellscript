#!/bin/bash -x

#DICTIONARY DCLARTION
declare -A arr

#VARIABLES
number=1

#CALCULATING 50 RANDOM MONTHS
while [ $number -ne 50 ]
do
	random=$((RANDOM%12+1))
	arr[$random]=$(( $((arr[$random])) +1 ))
	((number++))
done

#CALCULATING INDIVIDUALS HAVING BIRTHDAYS IN THE SAME MONTH
maximum=${arr[1]}
for (( index=1; index<=${#arr[@]}; index++ ))
do
	if [ $((arr[$index])) -gt $maximum ]
	then
		maximum=$((arr[$index]))
	fi
done

# DISPLAY INDIVIDUALS HAVING BIRTHDAYS IN THE SAME MONTH
echo "Keys  : ${!arr[@]}"
echo "Values: ${arr[@]}"
echo "Individuals Having Birthday In The Same Month : $maximum"
