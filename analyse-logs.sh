#!/bin/bash

LOG_DIR="~/OneDrive/desktop/DevOps_Lab/Shell-scripting/logs"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"

echo "Analyzing logs in the current directory..."
echo "==============================="
find $LOG_DIR -name "*.log" -mtime -1

echo -e "\nApplication Log Analysis:"
grep "ERROR" $LOG_DIR/$APP_LOG_FILE

echo -e "\nNumber of Errors logs in application.log:"
grep -c "ERROR" $LOG_DIR/$APP_LOG_FILE

echo -e "\nNumber of Fatal Errors in application.log:"
grep -c "FATAL" $LOG_DIR/$APP_LOG_FILE

echo -e "\nNumber of Errors logs in system.log:"
grep -c "ERROR" $LOG_DIR/$SYS_LOG_FILE

echo -e "\nNumber of Fatal Errors in system.log:"
grep -c "FATAL" $LOG_DIR/$SYS_LOG_FILE

echo -e "\nSystem Log Analysis:"
grep "ERROR" $LOG_DIR/$SYS_LOG_FILE