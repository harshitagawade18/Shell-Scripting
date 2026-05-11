#!/bin/bash
attempt=3
randomGuessNo=$((RANDOM%10+1))

echo "---------------------------- ONLY 3 ATTEMPTS TO GUESS A NUMBER --------------------------"
for (( i=1;i<=$attempt;i++ ))
do
        read -p "Enter the number in range of 1-10, $i guess : " input
        if [[ "$input" -eq "$randomGuessNo" ]]
        then
                echo "You Guessed the correct random no, Number is $randomGuessNo"
                exit
        fi
done

echo "Attempts are limited , Sorry! you are failed to guess"
echo "Correct guess is $randomGuessNo"



