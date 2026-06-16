#!/bin/bash

LOG_DIR="/c/Users/Asus/OneDrive/desktop/DevOps_Lab/Shell-scripting/logs"


ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

echo "Analyzing logs in the current directory..."
echo "==============================="

LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)
echo "$LOG_FILES"

for LOG_FILE in $LOG_FILES; do

     echo -e "\n"
     echo "================================"
     echo "============$LOG_FILE============"
        echo "================================"
  for PATTERN in ${ERROR_PATTERNS[@]}; do

echo -e "\nsearching $PATTERN logs in $LOG_FILE file"
grep $PATTERN "$LOG_FILE"

echo -e "\nNumber of $PATTERN logs found in $LOG_FILE:"
grep -c "$PATTERN" "$LOG_FILE"
  done
done
