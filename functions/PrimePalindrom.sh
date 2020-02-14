#!/bin/bash -x

#TAKE USER INPUT
read -p "Enter Number: " number

#FUNCTION TO CHECK PRIME NUMBER
prime()
{
	number=$1
	flag=0
	for(( index=2; index<$number; index++ ))
	do
		if [ $(($number%$index)) -eq 0 ]
		then
			((flag++))
			break
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo "$number Is Prime Number"
		palindrom $number
	else
		echo "$number Is Not Prime Number"
	fi
}

#FUNCTION TO CHECK PALINDROME
palindrom()
{
	number=$1
	temp=$number
	sum=0
	while [ $number -ne 0 ]
	do
		remainder=$number%10
		sum=$(( $(($sum*10)) + $remainder ))
		number=$(($number/10))
	done
	if [ $temp -eq $sum ]
	then
		echo "$temp Is Palindrom Number"
	else
		echo "$temp Is Not Palindrom Number"
	fi
}

#FUNCTION CALL
prime $number
