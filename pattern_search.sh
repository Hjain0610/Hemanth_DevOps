#!/bin/bash

search_pattern="linux"
search_path=`/home/ec2-user/scripts`


files=$(grep -l -r $search_pattern $search_path)


if [ -n "$files" ];
then
	echo "$files"
else
	echo "Pattern not found"
fi
