#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
B="\e[34m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
echo -e "${R}This script must be run as a root user${N}"
exit 1
else
echo -e "${G}This script is running as root user${N}"
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
echo -e "${R}MySQL is not installed. Installing now...${N}"
dnf install mysql-server -y
if [ $? -eq 0 ]
then
echo -e "${G}MySQL installation completed successfully.${N}"
else
echo -e "${R}MySQL installation failed. Please check the logs for more details.${N}"
exit 1
fi
else
echo -e "${G}MySQL is already installed.${N}"
fi  