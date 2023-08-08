#!/bin/bash
 
echo "enter the name to check:"
read name


if [ -L $name ];
then
	echo "$name is link"
elif [ -f $name ];
then
	echo "$name is file"
elif [ -d $name ];
then
       echo "$name is directory"
else
 echo "$name doesn't exists"
fi

