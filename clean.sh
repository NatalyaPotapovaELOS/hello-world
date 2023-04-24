#!/bin/sh

for (( i = 1; i <= $1; i++ ))
                do
                  userdel -r user$i
                  echo "user$i smazan"
                done
         exit 0;


