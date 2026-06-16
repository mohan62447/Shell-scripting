#!/bin/bash

LOG_DIR="/c/Users/Asus/OneDrive/desktop/DevOps_Lab/Shell-scripting/logs"


ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

echo "Analyzing logs in the current directory..."
echo "==============================="

LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)
echo "$LOG_FILES"

for LOG_FILE in $LOG_FILES; do

echo -e "\nApplication Log Analysis in $LOG_FILE:"
grep "${ERROR_PATTERNS[0]}" "$LOG_FILE"

echo -e "\nNumber of Errors logs in $LOG_FILE:"
grep -c "${ERROR_PATTERNS[0]}" "$LOG_FILE"

echo -e "\nNumber of Fatal Errors in $LOG_FILE:"
grep -c "${ERROR_PATTERNS[1]}" "$LOG_FILE"


echo -e "\nNumber of Critical Errors in $LOG_FILE:"
grep -c "${ERROR_PATTERNS[2]}" "$LOG_FILE"

done