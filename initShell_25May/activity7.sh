#!/bin/sh

ANSWER_ARR=(False False True True False True)
QUEST_ARR=("Lop rabbits have ears that stick up. True or False?" "Rabbits typically live for fewer than five years. True or False?" "Flemish Giant rabbits are the biggest rabbit breed. True or False?" "A rabbit's teeth never stop growing. True or False?" "Any two rabbits can live together peacefully or be 'bonded.' True or False?" "A male rabbit is called a 'buck.' True or False?")
echo "Welcome to our True or False Quiz Game!"

for i in {0..5}
do
	echo "${QUEST_ARR[$i]}"
	#echo "${ANSWER_ARR[$i]}"
	read USER_GUESS
	#echo $USER_GUESS

	ANSWER=$(echo "${ANSWER_ARR[$i]}")

	#echo $ANSWER

	if [[ "$ANSWER" == "$USER_GUESS" ]]
	then
		echo "Correct!"
	else
		echo "Incorrect!"
	fi


done



