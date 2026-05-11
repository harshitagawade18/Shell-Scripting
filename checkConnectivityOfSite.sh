#!/bin/bash
read -p "Enter the website path : " path
ping -c 1 $path

if [[ $? -eq 0 ]]           # $? -check if previous command was executed successfylly or not
then
        echo "Connection was Successful"
else
        echo "Failed to connect to website"
fi
