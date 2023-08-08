#!/bin/bash

if [ $# -ne 3 ];
then
	echo "Pass only 3 args"
	exit 1
fi

num1=$1
num2=$3
num3=$3


if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ];
then
	echo "$num1 is greater"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ];
then
	echo "$num2 is greater"
else
	echo "$num3 is greater"
fi
