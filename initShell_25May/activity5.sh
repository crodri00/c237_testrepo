#!/bin/sh

USER_NUM=$1
REV_NUM=$(echo $USER_NUM | rev)
echo $REV_NUM
