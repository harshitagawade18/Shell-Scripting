!/bin/bash

diskUsage=$(df / | awk 'NR==2 {print $5 }'|tr -d '%')

if [[ "$diskUsage" -gt 90 ]]
then
        echo "Filesystem harddisk crosses maxlimit , current usage is ${diskUsage}"
        echo "Alert is being send." | mail -s "Disk Alert" root
else
        echo "Filesystem is undercontrol, No need of mail alert.Current usage is $diskUsage%"
fi
