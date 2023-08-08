#!/bin/bash


space=`df -h . | awk -F " " '{print$(NF-1)}' | tail -1 | sed "s/%//g"`
if [ $space -gt 5 ];
then
	echo "Disk Space is full" | mail -s "Disk full" hemanthjain06101996@gmail.com	
fi
