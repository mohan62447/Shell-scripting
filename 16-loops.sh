#!/bin/bash

USER_ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/myscript.log"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"
PACKAGES=("mysql-server" "httpd" "nginx")

mkdir -p $LOGS_FOLDER
echo "script started at $(date)" | tee -a $LOG_FILE

if [ $USER_ID -ne 0 ]
then
echo -e "${R}This script must be run as a root user${N}" | tee -a $LOG_FILE
exit 1
else
echo -e "${G}This script is running as root user${N}" | tee -a $LOG_FILE
fi  

VALIDATE(){
    # Function to validate script execution
    if [ $? -eq 0 ]
    then
        echo -e "${G}Script executed successfully${N}" | tee -a $LOG_FILE
    else
        echo -e "${R}Script execution failed. Please check the logs for more details.${N}" | tee -a $LOG_FILE
        exit 1
    fi
}

for package in $@ #Here we need to pass the package names as arguments while executing the script. For example: ./script.sh mysql-server httpd nginx
do
    dnf list installed $package &>> $LOG_FILE
    if [ $? -ne 0 ]
    then
        echo -e "${Y}$package is not installed. Installing now...${N}" | tee -a $LOG_FILE
        dnf install $package -y &>> $LOG_FILE
        VALIDATE $? "$package"
    else
        echo -e "${G}$package is already installed.${N}" | tee -a $LOG_FILE
    fi  
done