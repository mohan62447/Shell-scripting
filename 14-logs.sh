#!/bin/bash

USER_ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/myscript.log"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

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

dnf list installed mysql &>> $LOG_FILE
if [ $? -ne 0 ]
then
echo -e "${Y}MySQL is not installed. Installing now...${N}" | tee -a $LOG_FILE
dnf install mysql-server -y &>> $LOG_FILE
VALIDATE $? "MySQL"
else
echo -e "${G}MySQL is already installed.${N}" | tee -a $LOG_FILE
fi  

dnf list installed httpd &>> $LOG_FILE
if [ $? -ne 0 ]
then
echo -e "${Y}Apache is not installed. Installing now...${N}" | tee -a $LOG_FILE
dnf install httpd -y &>> $LOG_FILE
VALIDATE $? "Apache"
else
echo -e "${G}Apache is already installed.${N}" | tee -a $LOG_FILE           
fi

dnf list installed nginx &>> $LOG_FILE
if [ $? -ne 0 ]
then            
echo -e "${Y}Nginx is not installed. Installing now...${N}" | tee -a $LOG_FILE
dnf install nginx -y &>> $LOG_FILE
VALIDATE $? "Nginx"
else
echo -e "${G}Nginx is already installed.${N}" | tee -a $LOG_FILE
fi  