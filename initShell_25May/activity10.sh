#!/bin/sh

CURRENT_DIR=$(pwd)
mkdir $CURRENT_DIR/sampDir10

fileName=$1
numLines=$2

if [ $(find / -type f -name $(echo $fileName) 2>/dev/null | wc -l) == 1 ]
then
	echo "Sorry! That file exists already."
	exit 1
else
	touch $CURRENT_DIR/sampDir10/$fileName.log
	echo $fileName
	echo $numLines

	CURR_FILE=$CURRENT_DIR/sampDir10/$fileName.log

	for i in $(eval echo "{1..$numLines}")
	do
		echo  "$RANDOM" >> $CURR_FILE
	done
fi
