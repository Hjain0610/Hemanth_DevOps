#!/bin/bash

res=0

add () {
	res=$((num1+num2))
	echo "$num1+$num2=$res"
}
sub () {
        res=$((num1-num2))
        echo "$num1-$num2=$res"
}
mul () {
        res=$((num1*num2))
        echo "$num1*$num2=$res"
}
div () {
        res=`echo "$num1 $num2" | awk '{printf "%.2f \n", $1/$2}'`
        echo "$num1/$num2=$res"
}
