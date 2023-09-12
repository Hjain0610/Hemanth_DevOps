#!/bin/bash

input=$*

if [ $# -eq 0 ]; 
then
  echo "Error: No input provided."
else
  reverse=$(echo $input | rev )
  echo "Number in reverse order: $reverse"
fi

