#!/bin/bash
#

echo "Enter :"
read name

if [ -L $name ];
then
        inode=`ls -i | grep $name | awk -F " " '{print $1}'`

        echo "inode of $name is $inode "

elif [ -d $name ];
then
	ls -lrt
elif [ -f $name ];
then
        if [ -s $name ];
        then
                con=`cat $name`
                num=`wc -l $name`
                echo "Content of $name:"
                echo "$con"

                echo "Number of lines of $name is $num"
        else
                echo "$name is empty"
        fi

else
	echo "$name doesn't exist"
fi

