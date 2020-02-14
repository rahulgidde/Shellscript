#!/bin/bash -x

declare -A die

#VARIABLE
maximum=0

# CALCULATING DICE NUMBER WHO REACH MAXIMUM AND MINIMUM COUNT
while [ $maximum -ne 10  ]
do
	number=$((1+RANDOM%6))
	die[$number]=$(( $((die[$number])) + 1 ))
	minimum=${die[1]}
	for (( index=1; index<=${#die[@]}; index++ ))
	do
		if [ $((die[$index])) -gt $maximum ]
		then
			maximum=$((die[$index]))
		fi
		if [ $((die[$index])) -lt $minimum ]
		then
			minimum=$((die[$index]))
		fi
	done
done

#DISPLAYING DICE NUMBER WHO REACH MAXIMUM AND MINIMUM TIMES
echo "Keys  : ${!die[@]}"
echo "Values: ${die[@]}"
echo "Maximun Times Reached Element Is : $maximum"
echo "Minimum Times Reached Element Is : $minimum"
