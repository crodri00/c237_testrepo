#!/bin/sh

CURRENT_DIR=`pwd`

FILE_PATH=$CURRENT_DIR/activity11File

FILE=$(cat $FILE_PATH)
#echo $FILE
FILE_LEN=$(echo $FILE | wc -w)

REV_STR=$(echo $FILE | tr ' ' '\n' | sort -gru | tr '\n' ' ')
echo $REV_STR
