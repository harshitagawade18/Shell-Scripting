#!/bin/bash
read -p "Enter the directory : " dir

if [[ -d $dir ]]
then
        echo "Directory Exist"
else
        echo "Directory Not exist"
fi


: <<'comment'
Approach 2: 
type=$(ls -ld $dir | cut -c1)
if [[ "$type" == "d" ]]
then
        echo "Directory is present"
else
        echo "Directory is not present"
fi

comment
