#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "This script must be run as a root user"
exit 1
else
echo "This script is running as root user"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 

echo "MySQL is not installed. Installing now..."
dnf install mysql-server -y
if [ $? -eq 0 ]
then 
echo "MySQL installation completed successfully."
else
echo "MySQL installation failed. Please check the logs for more details."
exit 1
fi  
else
echo "MySQL is already installed."
fi      