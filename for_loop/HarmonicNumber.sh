#!/bin/bash -x

#TAKE INPUT FROM USER
read -p "Enter The Range Of Harmonic Number:" number

#VARIABLE
harmonic=0

#CALCULATE HARMONIC NUMBER
for (( index=1; index<=number; index++ ))
do
	harmonic=$(echo "scale=2; $harmonic + 1 / $index" | bc)
done

#DISPLAY RESULT
echo "Harmonic Number is: $harmonic"
