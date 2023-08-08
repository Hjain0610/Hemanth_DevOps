#!/bin/bash
 num=`ls | wc -c`
if [ $num -gt 3 ];
then
ls -lrt
else
	pwd
fi
