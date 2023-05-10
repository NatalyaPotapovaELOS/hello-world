#!/bin/sh

USR=$1

#checks if the number of users is entered
if [ "$USR" = "0" ]; then
	echo "The operand must not be 0!"
	exit 1;
	#checks if the number of users is not 0
	elif [ -z "$1" ]; then
		echo "Operand error!"
		exit 1;
	else
		LOG=test.$(date +%Y.%m.%d.%H:%M:%S).log
		touch $LOG
		#the cycle of creating a given number of users
		for (( i = 1; i <= $USR; i++ ))
		do
	         #create a user "user№" with the password "student" and a home directory
		 useradd user$i --password "student" -m
		 #the function writes the number of the created user on stdin, sending the same message to the .log file with time stamp
		 echo "user$i created $(date +%Y.%m.%d.%H:%M:%S)" | tee -a $LOG
		 #generating ssh-keys for a user, without a password, sending the same message to the .log file with time stamp
		 mkdir /home/user$i/.ssh
		 #changing owner and owner group for .ssh, private and public key
		 chown user$i:user$i /home/user$i/.ssh
		 chmod 700 /home/user$i/.ssh
		 ssh-keygen -b 2048 -t rsa -f /home/user$i/.ssh/id_rsa -q -N ""
		 chown user$i:user$i /home/user$i/.ssh/id_rsa*
		 echo "SSH-key for user$i created $(date +%Y.%m.%d.%H:%M:%S)" | tee -a $LOG
	        done
	 exit 0;	
fi





