#!/bin/bash

echo "Enter:"
read name


  if [ -f "$name" ]; then
    
    if [ -s "$name" ]; then
      echo "$name is not empty. Printing its content:"
      cat "$name"
      num_lines=$(wc -l < "$name")
      echo "Number of lines in $name: $num_lines"
    else
      echo "$name is an empty file."
    fi
  elif [ -d "$name" ]; then
           ls -lrt
  elif [ -L "$name" ]; then
    echo "$name is a  link."
    
    inode=$(ls -i "$name" | awk '{print $1}')
    echo "Inode of the symbolic link '$name': $inode"
  else
    
  echo "$name does not exist."
fi
