#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter the Number: " number

#CALCULATE PRIME FACTORIZATION
for (( index=2; index<=number; index++ ))
do
	flag=0
	for (( index1=2; index1<$index; index1++ ))
	do
		if [ $(($index%$index1)) -eq 0 ]
		then
			((flag++))
			break
		fi
	done
		if [ $flag -eq 0 ]
		then
			for (( index2=$index; index2<=$index;  ))
			do
				if [ $(($number%$index2)) -eq 0 ]
				then
					number=$(($number/$index2))
					echo  "Prime Factors : $index2"
				else
					(( index2++ ))
				fi
			done
		fi
done
