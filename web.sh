#!/bin/bash

echo "Enter the website to search"
read url

if [ `curl -IsS $url | head -1 | awk -F " " '{print $2}'` -eq 200 ]
then
	echo "$url is running"
else
	echo "$url is not valid or not running"
	echo "starting httpd"
	sudo systemctl start httpd
	echo "httpd started"
fi
