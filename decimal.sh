#!/bin/bash

num1=$1
num2=$2
result= echo "scale=2;$num1/$num2"|bc
echo "$result"
res= echo "$num1 $num2" | awk '{printf "%.2f", $1/$2}' 
echo "$res"
