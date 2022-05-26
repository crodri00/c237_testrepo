#!/bin/sh

CURRENT_DIR=`pwd`

. $CURRENT_DIR/activity3Funcs

echo -e "Hello! How many times would you like to draw for our lottery?"
read DRAW_COUNT

drawFiles $DRAW_COUNT

echo -e "\nThanks! A given draw includes five regular lottery numbers and one bonus number. Now, for each draw, please enter a sequence of 6 numbers, separated by spaces, where the first five are between 1 and 50 (inclusive) and the sixth is between 1 and 10 (inclusive). Each draw entry should be delimited by a semicolon, with your last entry not including the semicolon.\n"
echo "For example, if you drew twice, a sample entry could look like: '1 2 3 4 5 6;7 8 9 10 11 12'"
echo -e "\nNow, please enter your lottery numbers: "
read USER_GUESSES

#echo $USER_GUESSES
splitGuess $USER_GUESSES

compareGuess

