#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter Start Point of Range: " start
read -p "Enter End Point of Range: " end

#DISPLAY PRIME NUMBERS FROM GIVEN RANGE
for (( index=start; index<=end; index++ ))
do
	flag=0
	for(( index1=2; index1<$index; index1++ ))
	do
		if [ $(($index%$index1)) -eq 0 ]
		then
			(( flag++ ))
			break
		fi
	done
		if [ $flag -eq 0 ]
		then
			echo $index
		fi
done
