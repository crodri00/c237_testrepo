#!/bin/sh

CURRENT_DIR=`pwd`
. $CURRENT_DIR/activity8Funcs

INT_COUNT=0
declare -a INT_ARR=()
echo "Hello! Please enter a series of 5-10 integers, with a minimum total of 5!"

while [ $(echo "${INT_ARR[@]}" | wc -w) -lt 5 ]
do
	read USER_INT
	while [ $(echo $USER_INT | grep -v '[[:digit:]]' | wc -l) -gt 0 ]
	do
		echo "Sorry! You did not enter a number! Please try again."
		read USER_INT
	done
	INT_ARR+=($USER_INT)
	#echo "${INT_ARR[@]}"

	INT_COUNT=$(( $INT_COUNT + 1 ))
	#echo $INT_COUNT

done
echo "${INT_ARR[@]}"

while [ $(echo "${INT_ARR[@]}" | wc -w) -le 9 ]
do
	echo "Thanks! You've entered more than five numbers. Would you like to continue entering more or move on?"
	echo "Enter '1' for 'Continue and '2' for 'Move On', please."
	read USER_OPT

	if [ $(echo $USER_OPT) == 1 ]
	then 
		echo "Got it! Please enter your number below:"
		read NEXT_USER_INT
		INT_ARR+=($NEXT_USER_INT)
		INT_COUNT=$(( $INT_COUNT + 1 ))
	else
		echo "Moving on then!"
		break
	fi
done

echo "${INT_ARR[@]}"

INT_ARR_LEN=$(echo "${INT_ARR[@]}" | wc -w)

for i in $(eval echo "{0..$(( $INT_ARR_LEN - 1 ))}")
do
	echo "This is iteration $(( $i + 1 )) and it's value is "${INT_ARR[$i]}"."
done

echo $(echo "${INT_ARR[@]}" | wc -w)

echo "${INT_ARR[@]}"
#echo "${INT_ARR[@]}"

mult_arr_entr "${INT_ARR[@]}"

