#!/bin/sh

ANSWER_ARR=(False False True)
QUEST_ARR=("Lop rabbits have ears that stick up. True or False?" "Rabbits typically live for fewer than five years. True or False?" "Flemish Giant rabbits are the biggest rabbit breed. True or False?")
echo "Welcome to our True or False Quiz Game!"

for i in {0..2}
do
	echo "${QUEST_ARR[$i]}"
	#echo "${ANSWER_ARR[$i]}"
	read USER_GUESS
	#echo $USER_GUESS

	ANSWER=$(echo "${ANSWER_ARR[$i]}")

	echo $ANSWER

	if [[ "$ANSWER" == "$USER_GUESS" ]]
	then
		echo "Correct!"
	else
		echo "Incorrect!"
	fi


done



