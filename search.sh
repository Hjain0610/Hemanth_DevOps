#!/bin/bash

echo "Enter name"
read name

if [ -L $name ]
then
        ls -i | grep $name
elif [ -f $name ]
then
	if [ -s $name ]
	then
		echo "*********************************"
		echo "Content of File $name is"
		cat $name
		echo "*********************************"

		echo "Number of Lines in File $name is"
		echo "*********************************"
		wc -l $name
		echo "*********************************"
	else
		echo "Empty"
	fi
elif [ -d $name ]
then
	ls -l 
else
	echo "No such files or directory"
fi
