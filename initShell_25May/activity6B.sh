#!/bin/sh

PARAM_A=$1
PARAM_B=$2

function numCheck() {

        PARAM_A=$PARAM_A
        PARAM_B=$PARAM_B

        while (( $(echo $PARAM_A | grep -E '[[:alpha:]]|[[:punct:]]|[[:space:]]' | wc -l)>0 || $(echo $PARAM_B | grep -E '[[:alpha:]]|[[:punct:]]|[[:space:]]' | wc -l)>0 ))
        do
                echo -e "You did not enter a number! Please enter two numbers: "
                read PARAM_A PARAM_B
        done
        break
}

numCheck $PARAM_A $PARAM_B

echo "The difference between your two numbers is $(( $PARAM_A-$PARAM_B ))."
