#!/bin/bash

directory=$1

if [ ! -d "$directory" ];
then
	echo "directory not found"
	exit 1
fi
find "$directory" -type f

