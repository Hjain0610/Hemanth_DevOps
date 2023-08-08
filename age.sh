#!/bin/bash

echo "Enter the file"
read file

until ! read a
do
	age=`echo $a | awk -F "," '{print $3}'`
	name=`echo $a | awk -F "," '{print $1}'`
	if [[ $age =~ ^[0-9]+$ ]] && [ $age -ge 30 ]
	then
		echo $name
	fi
done<$file
