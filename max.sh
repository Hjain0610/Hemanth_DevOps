#!/bin/bash

big1=0
big2=0

for i in $*
do
	if [ $i -gt $big1 ]
	then
		big2=$big1
		big1=$i
	elif [ $i -gt $big2 ] && [ $i -ne $big1 ]
	then
		big2=$i
	fi
done

echo "Second biggest number is $big2"
