#!/bin/sh

fileName=$1
#echo $fileName

if [ $(find / -type f -name $(echo $fileName) 2>/dev/null | wc -l) == 1 ]
then
	echo "Sorry! That file exists already."
	exit 1
else
	touch ~/$fileName
fi
