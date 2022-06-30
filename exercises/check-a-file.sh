#!/bin/bash

# running the file in background 
./sleep-and-create-a-file.sh &

# using while loop to find the file
while [[ ! -e "./file.txt" ]]
do
  echo "File not found";
  sleep 1;
done

echo "File found!!!"
