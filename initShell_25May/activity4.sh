#!/bin/sh

USER_PWD=$1

function passwordTest () {

	if (( $(echo $USER_PWD | wc -m) < 8 || $(echo $USER_PWD | grep '[[:digit:]]' | wc -l) == 0 || $(echo $USER_PWD | grep '[[:lower:]]' | wc -l) == 0 || $(echo $USER_PWD | grep '[[:upper:]]' | wc -l) == 0 || $(echo $USER_PWD | grep '[[:punct:]]' | wc -l) > 0))
	then
		echo "Your password is NOT secure enough!! Or just improperly formatted."
		break
	else
		echo "Your password is secure enough!!"

	fi
}

passwordTest $USER_PWD
