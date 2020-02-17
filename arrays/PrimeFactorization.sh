#!/bin/bash

#TAKE USER INPUT
read -p  "Enter Number: " number

#VARIABLE
count=0

## CALCULATE PRIME FACTORIZATION
for (( index=2; index<=$number; ))
do
	if [ $(( number % index )) -eq 0 ]
	then
		number=$(( number / index ))
		Array[((count++))]=$index
	else
		((index++))
	fi
done

#PRINT ARRAY VALUES
echo "Array Values: ${Array[@]}"
