#!/bin/sh

FILEA=$1
FILEB=$2

#cat $FILEA
#cat $FILEB

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

echo "${FILEA_ARR[@]}"
echo "${FILEB_ARR[@]}"

#subtraction_setA=$(echo "${FILEA_ARR[@]}" "${FILEB_ARR[@]}" | sed 's/ /\n/g' | sort | uniq -d | xargs echo "${FILEB_ARR[@]}" | sed 's/ /\n/g' | sort | uniq -u)

#subtraction_setB=$(echo "${FILEB_ARR[@]}" "${FILEA_ARR[@]}" | sed 's/ /\n/g' | sort | uniq -d | xargs echo "${FILEA_ARR[@]}" | sed 's/ /\n/g' | sort | uniq -u)

#echo "${subtraction_setA[@]}"
#echo "${subtraction_setB[@]}"


