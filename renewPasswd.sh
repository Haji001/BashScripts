#!/bin/bash


users=$(cat /etc/passwd |cut -d: -f1)
#echo $users

read -p "Enter username: " users
if [ "$users" == "$users" ]
then
  passwd $users
  chage -I -1 -m 0 -M 99999 -E -1 $users
  chage -l $users
else
  echo "user do not exist!"
fi
