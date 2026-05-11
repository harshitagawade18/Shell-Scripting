#!/bin/bash
read -p "Enter a number " num1

if [[ "$num1" -gt 0 ]]
then
        echo "$num1 is positive"
elif [[ "$num1" -eq 0 ]]
then
        echo "$num1 is zero"
else
        echo "$num1 is not positive"
fi
