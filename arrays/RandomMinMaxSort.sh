#!/bin/bash

#STORE RANDOM NUMBERS IN ARRAY
for (( index=1; index<=10; index++ ))
do
	Array[index]=$(($RANDOM%1000))
done

#SORT ARRAY
for (( index1=1; index1<=${#Array[@]}; index1++ ))
do
	for (( index2=$(($index1+1)); index2<=${#Array[@]}; index2++  ))
	do
		if [ ${Array[index1]} -lt ${Array[index2]} ]
		then
			temp=${Array[index1]}
			Array[$index1]=${Array[index2]}
			Array[$index2]=$temp
		fi
	done
done

#SORTED ARRAY
echo ${Array[@]}

#PRINT SECOND SMALLEST AND LARGEST ELEMENT IN ARRAY
secondSmallest=${#Array[@]}-1
echo "Second Smallest Number In Array = ${Array[secondSmallest]}"
echo "Second Largest Number In Array = ${Array[2]}"

