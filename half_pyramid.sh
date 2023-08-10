#!/bin/bash

read -p "enter : " rows
num=1
for ((i=1;i<=$rows;i++));
do
	for ((j=1;j<=i;j++));
	do
		echo -n "$num "
	done
	echo 
done
