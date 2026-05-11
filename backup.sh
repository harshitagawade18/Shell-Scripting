#!/bin/bash

d=$(date +%Y-%m-%d)
tar -cvf /root/backup-$d.tar /etc >/dev/null

echo "Backup of /etc is successfully done!!!!!"
echo "Backup file is : /root/backup-$d.tar"
