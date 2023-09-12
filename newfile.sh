#!/bin/bash


search_directory="/home/ec2-user/practice/scripts"
newest_file=$(ls -lrt "$search_directory" | tail -1)

if [ -n "$newest_file" ];
then
  echo "Newest file: $newest_file"
else
  echo "No files found"
fi
