#!/bin/bash -x

#FIND RANDOM NUMBERS
for (( index=0; index<=10; index++))
do
	Array[$index]=$((RANDOM%1000))
done

#VARIABLES
smallest=${Array[0]}
secondSmallest=${Array[1]}
len=${#Array[@]}
largest=${Array[0]}
secondLargest=${Array[1]}

#FUNCTION TO CALCULATE SECOND SMALLEST NUMBER IN ARRAY
function getSmallest()
{
	for (( index=0; index<$len; index++ ))
	do
		if [[ ${Array[index]} -lt $smallest ]]
		then
			secondSmallest=$smallest
			smallest=${Array[index]}
		elif [ ${Array[index]} -lt $secondSmallest -a ${Array[index]} -ne $smallest ]
		then
			secondSmallest=${Array[index]}
		fi
	done
	echo $smallest
	echo $secondSmallest
}

#FUNCTION TO CALCULATE SECOND LARGEST NUMBER IN ARRAY
function getLargest()
{
	for (( index=0; index<$len; index++ ))
	do
		if [ ${Array[index]} -gt $largest ]
		then
			secondLargest=$largest
			largest=${Array[index]}
		elif [ ${Array[index]} -gt $secondLargest -a ${Array[i]} -ne $largest ]
		then
			secondLargest=${Array[index]}
		fi
	done
	echo $largest
	echo $secondLargest
}

#FUNCTION CALL TO GET SECOND Largest NUMBER
getLargest ${Array[@]}
