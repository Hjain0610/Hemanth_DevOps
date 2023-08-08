#!/bin/bash


echo "Enter:"
read name


if [ -f $name ];
then
	if [ -s $name ];
	then
		con=`cat $name`
		num=`wc -l`
		echo "contents of file:"
		echo "$con"
		echo "no. of lines of file:"
		echo "$num"
	else
		echo "File is empty"
	fi
elif [ -d $name ];
then
	ls -lrt
elif [ -L $name ];
then
	i='ls -i $name'
	echo "inode of link:$i"
else
	echo "$name not found"
fi
