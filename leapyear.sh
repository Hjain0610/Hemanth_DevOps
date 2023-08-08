#!/bin/bash

echo "Enter the year:"
read YEAR
Y=`expr $YEAR % 4`

if [ $Y -eq 0 ];
then
	echo "$YEAR is leap year"
else
	echo "$YEAR is not a leap year"
fi
