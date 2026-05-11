!/bin/bash
if ! rpm -q $1 &>/dev/null
then
        echo "Package is not Installed on System"
        sudo yum install $1 -y > /dev/null
        if [ $? -eq 0 ]
        then
                echo "Package Installed Successfully!!!!!"
                echo "Installed Date is : $(rpm -qi $1 | grep -i "Install Date" | awk '{print $4"-"$5"-"$6}')"
        fi
else
        echo "Package is Installed on System"
        echo "Installed Date is : $(rpm -qi $1 | grep -i "Install Date" | awk '{print $4"-"$5"-"$6}')"
fi
