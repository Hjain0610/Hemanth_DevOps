#!/bin/bash

read -p "Enter a number: " input

if [ -z "$input" ]; 
then
  echo "Error: No input provided."
else
  reverse=$(echo $input | rev )
  echo "Number in reverse order: $reverse"
fi

