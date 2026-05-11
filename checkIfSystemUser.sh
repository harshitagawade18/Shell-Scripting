#!/bin/bash
read -p "Enter the user name to check if system user or not : " user

if ! id $user &>/dev/null
then
        echo "User is not present"
        exit 1
fi

if [[ $(id -u "$user") -lt 1000 ]]
then
        echo "User is System user , id is $(id -u $user) "
else
        echo "User is Normal user"
fi
