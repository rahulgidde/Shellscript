#!/bin/bash

#TAKE USER INPUT FOR ARRAY LIMIT
read -p "Enter the limit for array: " limit

#VARIABLE
count=0

#ENTER THE VALUES IN ARRAY FROM USER
echo "Enter the value in array: "
for (( index=0; index<$limit; index++ ))
do
	read Array[$index]
done

# CALCULATE THE TRIPLETS WHOSE SUM IS ZERO AND PRINT COUNT OF TRIPLETS
for (( index1=0; index1<${#Array[@]}; index1++ ))
do
	for (( index2=$(($index1+1)); index2<${#Array[@]}; index2++ ))
	do
		for (( index3=$(($index2+1)); index3<${#Array[@]}; index3++ ))
		do
			if [ $(( $((${Array[index1]}+${Array[index2]})) + ${Array[index3]} )) -eq 0 ]
			then
				echo  ${Array[index1]} " " ${Array[index2]} " " ${Array[index3]}
				((count++))
			fi
		done
	done
done
echo "count=$count"
