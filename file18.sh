#!/bin/bash


echo "Enter :"
read name

if [ -f $name ];
then
        if [ -s $name ];
        then
                con=`cat $name`
                num=`wc -l`
                echo "Content of $name:"
		echo "$con"
                echo "Number of lines of $name is $num"
        else
                echo "File is Empty"

        fi
elif [ -d $name ];
then
        ls -lrt
elif [ -L $name ];
then
        i=`ls -i $name`
        echo "inode of $name is $i "
else
        echo "$name doesn't exist"
fi

