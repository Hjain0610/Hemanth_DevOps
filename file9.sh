#!/bin/bash

filename=$1
if [ -e "$filename" ];
then
	echo "File found, Mithai batoo"
else
	echo "File not found,Aur mehnat karoo!"

fi
