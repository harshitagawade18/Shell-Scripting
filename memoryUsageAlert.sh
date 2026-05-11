#!/bin/bash
total=$(free | awk 'NR==2 {print $2}')
used=$(free | awk 'NR==2 {print $3}')
memoryUtilized=$(( used * 100 / total ))

if [[ $memoryUtilized -eq 100 ]]
then
        echo "Memory Utilized is more than 100%" |mail -s "Memory Full Alert" root
else
        echo "Memory utilized is below 100% , Percentage is $memoryUtilized%"
fi
