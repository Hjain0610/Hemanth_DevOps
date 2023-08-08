#!/bin/bash

echo "Enter:"
read FILE

age= `echo $script | awk -F "," '{print $3}'` | tail -n+2
while read script
do
	
	if [ $age -ge 30 ];
	then 
		name= `echo $script | awk -F "," '{print $1}'`
		echo "name: $name: age: $age"
	fi
	
done<$FILE
