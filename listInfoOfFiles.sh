!/bin/bash

if [[ -f $1 ]]
then
        echo "It is a file."
        echo "$(ls -li kk | awk '{print "Inode no is : " $1 " || User Owner : " $4 " || Size of file : " $6}')"
        echo "Total no of lines in "$1" is : $(cat "$1" | wc -l)"
else
        echo "It's not a file"
fi
