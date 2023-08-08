#!bin/bash

service=("sshd" "httpd")


for i in "${service[@]}"
do
	if systemctl is-active --quiet $i
	then
		echo "$i is running"
	else
		echo "$i is not working" | mail -s "Service status" patilchau@gmail.com
		sudo systemctl restart $i
		echo "$i restarted"
	fi
done
