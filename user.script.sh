#!/bin/sh

usr=$1
for ($i=1; $i<=$usr; $i++)
do 
	useradd name=user$usr password=student; 
	su - user$usr;
	ssh-keygen -y password " " user$usr
	exit
done



