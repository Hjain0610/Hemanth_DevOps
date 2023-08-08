#!/bin/bash

read -p "Enter the number: " NUM

case $NUM in
	1)
		echo "Enter the Pattern: "
		read PATTERN
		echo "Enter the Path: "
                read P
		ls -lrt $P | grep -l -r $PATTERN 
		;;
	2)   
		read -p "Enter the name: " NAME
		if [ -L $NAME ];
		then
			echo "$NAME is a Link"
		elif [ -d $NAME ];
		then
			echo "$NAME is a Directory"
		elif [ -f $NAME ];
		then 
			echo "$NAME is a File"
		else
			echo "$NAME doesn't exist"
		fi
		;;
		
  	3)
		read -p "Enter the file path to be converted to link: " FILEPATH
		read -p "Enter new name of link: " LINKNAME
		ln -s $FILEPATH $LINKNAME
		echo "$LINKNAME has been created"
		ls -lrt | tail -1
		;;
	4)
		read -p "Enter FILEP: " F
		read -p "Enter pattern to be replaced: " PRD
		read -p "Enter pattern replacement: " PRM
		sed   s/$PRD/$PRM/g "$F"
		;;
	5) 	
		read -p "Enter the filename: " FILENAME
		find $PWD -name $FILENAME
		;;
	6)
		read -p "Enter file to be renamed: " FRE
		read -p "Enter new name of file: " FNA
		mv $FRE $FNA
		;;
	*)	
		echo "TRY SOMETHING ELSE"
		;;
esac
		
