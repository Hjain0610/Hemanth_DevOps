#!/bin/bash


services=("httpd" "sshd")
for service in ${services[@]}
do
	if systemctl is-active --quiet $service;
	then
		echo "$service is running"
	else
		echo "$service is not running" | mail -s "RESOLVE the issue" hemanthjain06101996@gmail.com
		sudo systemctl start $service
		echo "$service has restarted"
	fi
done
