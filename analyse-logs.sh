#!/bin/bash

LOG_DIR="/c/Users/Asus/OneDrive/desktop/DevOps_Lab/Shell-scripting/logs"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"

ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

echo "Analyzing logs in the current directory..."
echo "==============================="
find $LOG_DIR -name "*.log" -mtime -1

echo -e "\nApplication Log Analysis:"
grep "${ERROR_PATTERNS[0]}" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of Errors logs in application.log:"
grep -c "${ERROR_PATTERNS[0]}" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of Fatal Errors in application.log:"
grep -c "${ERROR_PATTERNS[1]}" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of Errors logs in system.log:"
grep -c "${ERROR_PATTERNS[0]}" "$LOG_DIR/$SYS_LOG_FILE"

echo -e "\nNumber of Fatal Errors in system.log:"
grep -c "${ERROR_PATTERNS[1]}" "$LOG_DIR/$SYS_LOG_FILE"

echo -e "\nNumber of Critical Errors in system.log:"
grep -c "${ERROR_PATTERNS[2]}" "$LOG_DIR/$SYS_LOG_FILE"

echo -e "\nSystem Log Analysis:"
grep "${ERROR_PATTERNS[0]}" "$LOG_DIR/$SYS_LOG_FILE"