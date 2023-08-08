#!/bin/bash

source /c/Users/cheta/linux/operations.sh

echo "Enter number1"
read num1

echo "Enter number2"
read num2

echo "Enter operation to perform"
echo "ADD SUB MUL DIV"
read op

if [ $op = "ADD" ]
then
	add $num1 $num2
elif [ $op = "SUB" ]
then
        sub $num1 $num2
elif [ $op = "MUL" ]
then
        mul $num1 $num2
elif [ $op =  "DIV" ]
then
        div $num1 $num2
else
	echo "Enter correct value"
fi
