#!/bin/bash

echo "Enter number:"
read NUM
SUM=0
VAR=$NUM

while [ $VAR -gt 0 ];
do
	SUM=$(($SUM + $VAR))
	VAR=$(($VAR - 1))
done
echo "SUM of numbers is $SUM"
