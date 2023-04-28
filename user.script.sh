#!/bin/sh

USR=$1

#checks if the number of users is entered
if [ "$USR" = "0" ]; then
	echo "Operand nesmi byt 0!"
	exit 1;
	#checks if the number of users is not 0
	elif [ -z "$1" ]; then
		echo "Chyby operand"
		exit 1;
	else

		#the cycle of creating a given number of users
		for (( i = 1; i <= $USR; i++ ))
		do
	         #create a user "user№" with the password "student" and a home directory
		 useradd user$i --password "student" -m
		 #generating ssh-keys for a user, without a password
		 ssh-keygen -y password "/n" user$i
		 #the function writes the number of the created user on stdin, sending the same message to the .log file and recording the date the file was created
		 echo "user$i created" | tee -a test.$(date +%Y.%m.%d.%H:%M:%S).log
	        done
	 exit 0;	
fi





