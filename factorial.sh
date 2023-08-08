#!/bin/bash

for i in $*
do
	fact=1
	while [ $i -gt 1 ]
	do
		fact=$((fact*i))
		i=$((i-1))
	done
	echo $fact
done
