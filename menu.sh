#!/bin/bash

echo "Select a option to perform following function"
echo "1 : Search Word"
echo "2 : Check type"
echo "3 : Create a soft link"
echo "4 : Edit the file"
echo "5 : Find path of the file"
echo "6 : Rename the file"
echo "* : EXIT"

read num

case $num in
	"1")
		echo "Enter pattern"
		read pattern

		echo "Enter Path"
		read path

		s=$(grep -l -r $pattern $path)

		if [ -n "$s" ]
		then
        		echo "$s"
		else
        		echo "No Files containing the pattern found"
		fi
		;;
	"2")
		echo "Enter input"
		read i

		if [ -L $i ]
		then
        		echo "$i is a link"
		elif [ -f $i ]
		then
        		echo "$i is a file"
		elif [ -d $i ]
		then
        		echo "$i is a directory"
		else
        		echo "Enter correct format"
		fi
		;;
	"3")
		echo "Enter the file to create link"
		read file
		path=`realpath $file`
		ln -s $path link_$file
		echo "The soft link of $file is link_$file"
		;;
	"4")
		echo "Enter the file to edit"
		read file

		echo "Enter the word to replace"
		read word1
		echo "Enter the word to replace with"
		read word2
		echo "######################################"
		echo "File before replacement"
		echo "######################################"
		cat $file
		echo "######################################"
		echo "File after replacement"
		echo "######################################"
		sed -i s/"$word1"/"$word2"/g $file
		cat $file
		echo "######################################"
		;;
	"5")
		echo "Enter the file to check the path"
		read file
	
		find $PWD -type f -name $file
		;;
	"6")
		echo "Enter the file to change the name"
		read file
		echo "Enter name to change"
		read name

		mv $file $name
		;;
	"*")
		exit
		;;
esac
