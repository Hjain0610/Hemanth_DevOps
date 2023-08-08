#!/bin/bash

space=`df -h . | awk -F " " '{print(NF-1)}' | tail -1 | sed 's/%//g'`

if [ $space -gt 05 ];
then
	echo "Check mail"
	echo "Disk usage is 5%" | mail -s "About Disk space" hemanthjain06101996@gmail.com
else
	echo "Check mail"
	echo "Nothing to woryy about" | mail -s "Nothing to worry about Disk space" hemanthjain06101996@gmail.com
fi
	

