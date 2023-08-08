#!/bin/bash

read -p "Enter the path to the first file: " file1
read -p "Enter the path to the second file: " file2

if [ ! -f "$file1" ]; then
  echo "File '$file1' does not exist."
  exit 1
fi

if [ ! -f "$file2" ]; then
  echo "File '$file2' does not exist."
  exit 1
fi

n=1
while IFS= read -r line1 && IFS= read -r line2 <&3; do
  echo "Line $n of File 1: $line1"
  echo "Line $n of File 2: $line2"
  n=$((n+1))
done < "$file1" 3< "$file2"
