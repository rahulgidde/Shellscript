#!/bin/bash -x

#TAKING USER INPUT
read -p  "Enter Day:" day
read -p  "Enter Month:" month

#TO CHECK FOR DAY OF MONTH IS BETWEEN MARCH 20 AND JUNE 20
if [ $day -ge 3 -a  $month -le 6 ]
then
		if [ $day -ge 20 -a $month -eq 3 ]
		then
				echo "true"
		else
			 	if [ $day -le 31 -a $month -eq  4 ]
				then
						echo "true"
				else
						if [ $day -le 30  -a $month -eq 5 ]
						then
								echo "true"
						else
								if [ $day -le 20 -a $month -eq 6 ]
								then
										echo "true"
								else
										echo "flase"
								fi
						fi
				fi
		fi
else
	echo "Invalid Month Enter The Month Between March To June:"
fi
