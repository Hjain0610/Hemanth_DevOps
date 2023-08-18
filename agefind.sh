#!/bin/bash

echo "Enter file:"
read FILE
AGE=awk -F "," `{print $3}` $FILE
NAME=awk -F "," `{print $1}` $FILE 

while read a
do
NUM= tail -n+2 $FILE
if [ $AGE -ge 30 ];
then
	echo $NAME
fi
NUM= $((NUM1+1))
done< FILE


 

