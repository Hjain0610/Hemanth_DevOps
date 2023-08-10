#!/bin/bash

rows=5
num=1
for ((i=rows;i>=1;i--));
do
	for ((j=1;j<=i;j++));
	do
		echo -n "$num "
		num=$((num+1))
	done
	num=1
	echo
done
