#!/bin/bash


echo "Enter the name:"
read FILE

while read NWC
do
WORDS=`echo "$NWC" | wc -w`
CHAR=`echo "$NWC" | wc -c`

echo "NUM : NO of WORDS : $WORDS : NO of CHAR : $CHAR"
NUM=$((NUM+1))
done < $FILE
