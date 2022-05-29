#!/bin/sh

FILE_A=$1
FILE_B=$2

FILEA_STR=$(cat $FILE_A | tr ' ' '\n')
FILEB_STR=$(cat $FILE_B | tr ' ' '\n')

#echo $FILEA_STR
#echo $FILEB_STR

declare -a FILEA_ARR=()
declare -a FILEB_ARR=()

for pos in $FILEA_STR
do
	#echo $pos
	FILEA_ARR+=($pos)
done

for pos in $FILEB_STR
do
        #echo $pos
        FILEB_ARR+=($pos)
done

FILEA_ARR=($(echo "${FILEA_ARR[@]}" | sed 's/ /\n/g' | sort | uniq))
FILEB_ARR=($(echo "${FILEB_ARR[@]}" | sed 's/ /\n/g' | sort | uniq))

intersection_set=$(echo "${FILEA_ARR[@]}" "${FILEB_ARR[@]}" | sed 's/ /\n/g' | sort | uniq -d)
echo $intersection_set 


if [ $(echo $intersection_set | wc -w) -gt 0 ]
then
	echo "There is at least one common element!"
else
	echo "Apologies, there are no common elements."
fi

