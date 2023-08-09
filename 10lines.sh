#!/bin/bash
#
source_dir="/home/ec2-user/mock"
destination_dir="/home/ec2-user/scripts/interview"

if [ ! -d "$destination_dir" ];
then
    mkdir -p "$destination_dir"
fi

for file in "$source_dir"/*;
do
    if [ -f "$file" ];
    then
        line_count=$(wc -l < "$file")
        if [ "$line_count" -eq 10 ];
       	then
            mv "$file" "$destination_dir"
            echo "Moved $file to $destination_dir"
        fi
    fi
done

