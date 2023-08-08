#!/bin/bash

echo "Enter pattern"
read pattern

echo "Enter Path"
read path

s=$(grep -l -r $pattern * $path)

if [ -n "$s" ]
then
	echo "$s"	
else
	echo "No Files containing the pattern found"
fi
