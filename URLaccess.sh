#!/bin/bash


echo "Enter URL:"
read URL
NUM=200


service () {
 	if [ `curl -IsS $URL | head -1 | awk -F " " '{print $2}'` -eq $NUM ];
	then
		echo "$URL is accesible"
	fi
}
if systemctl is-active --quiet httpd;
then
	service
else
	echo "$URL not accesible"
	sudo systemctl start httpd
	echo "httpd service has started"
	service
fi
	
