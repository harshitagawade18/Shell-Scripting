#!/bin/bash
read -p "Enter the service name " serviceName

if ! rpm -q "$serviceName" &>/dev/null
then
        echo "Package is not installed"
        exit 1
fi

if ! systemctl is-active --quiet $serviceName
then
        echo "Apache Server is not running"
        systemctl start $serviceName
        echo "Now its running"
else
        echo "Apache Server is running"
fi
