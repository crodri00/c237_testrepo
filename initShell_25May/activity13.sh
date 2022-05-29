#!/bin/sh

FILEA=$1
FILEB=$2

#cat $FILEA
#cat $FILEB

FILEA_STR=$(cat $FILEA)
FILEB_STR=$(cat $FILEB)

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

subtraction_setB=$(echo "${FILEA_ARR[@]}" "${FILEB_ARR[@]}" | sed 's/ /\n/g' | sort | uniq -d | xargs echo "${FILEB_ARR[@]}" | sed 's/ /\n/g' | sort | uniq -u)

subtraction_setA=$(echo "${FILEB_ARR[@]}" "${FILEA_ARR[@]}" | sed 's/ /\n/g' | sort | uniq -d | xargs echo "${FILEA_ARR[@]}" | sed 's/ /\n/g' | sort | uniq -u)

echo -e "Only in file 1:\n${subtraction_setA[@]}"
echo -e "Only in file 2:\n${subtraction_setB[@]}"


