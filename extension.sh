#!/bin/bash

read -p "Enter path: " PATH
for file in "$PATH";
do
  	if [ -f "$file" ]; 
  	then
    	mv "$file" "$file.new"
    	echo "Renamed $file to $file.new"
  	fi
done


