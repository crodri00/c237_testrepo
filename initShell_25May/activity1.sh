#!/bin/sh

USERNAME=$USER
CURRENT_DATE=`date +%m-%d-%Y`
CURRENT_TIME=`date +'%T %Z'`
CURRENT_DIR=`pwd`
FILE_COUNT=$(( `ls -l | wc -l` - 1 ))
BIGG_FILE=`du -ah --exclude='.git' | sort -r | tail -n +2 | head -1 | awk '{ print $2 }'`

echo "Hello, your username is $USERNAME."
echo "The current date is $CURRENT_DATE."
echo "The time is $CURRENT_TIME."
echo "The path to your current working directory is $CURRENT_DIR."
echo "There are currently $FILE_COUNT files in your current directory." 
echo "The biggest file in your directory is $BIGG_FILE."
