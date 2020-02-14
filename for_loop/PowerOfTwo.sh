#!/bin/bash -x

#TAKE INPUT FROM USER
read -p "Enter Number: " number

#INITIALIZE VARIABLE
power=1

#CALCULATING POWER OF 2
for (( index=1; index<=$number; index++ ))
do
	power=$(($sum * 2))
	echo $power
done
