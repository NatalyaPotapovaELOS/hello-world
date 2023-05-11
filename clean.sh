#!/bin/sh
USR=$1

if [ "$USR" = "0" ]; then 
	#checks if the number of users is entered
	echo "The operand must not be 0!"
	exit 1;
	#checks if the number of users is not 0
	elif [ -z "$1" ]; then
		echo "Operands errors"
		exit 1;
	else
		#cycle for deleting a given number of users
		for (( i = 1; i <= $USR; i++ ))
                do
                  userdel -r user$USR
		  rm test.*.log
                  echo "user$USR deleted"
                done
         exit 0;
fi


