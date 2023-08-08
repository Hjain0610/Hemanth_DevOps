#!/bin/bash

search_pattern="linux"
search_directory="/home/ec2-user/scripts"


files_with_pattern=$(find "$search_directory" -type f | grep -l "$search_pattern")


if [ -s "$files_with_pattern" ];
then
  
   echo "Pattern found in the following files:"
  echo "$files_with_pattern"

else
   echo "Pattern not found in any file."
fi
