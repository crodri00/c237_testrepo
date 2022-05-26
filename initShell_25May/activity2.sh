#!/bin/sh

# user-given directory
SAMP_DIR=$1

for file in `ls $1`
do
	mv "$1/$file" "$1/$file.`date +%Y%m%d`"
done
