#!/bin/bash
sftp -q root@desktop <<EOF > /dev/null 2>&1
get /root/anaconda-ks.cfg /tmp
exit
EOF
