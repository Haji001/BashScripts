#!/bin/bash

df -H > space.txt
chmod +x space.txt


FILE=space.txt

sed 's/59G/59%/' $FILE > USED_PERC.txt
awk '{print $3}' USED_PERC.txt

UPDATE_FILE=USED_PERC


if [ "$UPDATE_FILE" -gt "50" ]
  then
    echo "Disk space is okay for now"
else:
  echo "good for now"
fi






