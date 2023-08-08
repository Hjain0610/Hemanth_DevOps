#!/bin/bash

filename=$1

if [ ! -e "$filename" ];
then
	echo "File not found"
	exit 1
fi

lines=$(wc -l < $filename)
words=$(wc -w < $filename)
characters=$(wc -c < $filename)

echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $characters"



