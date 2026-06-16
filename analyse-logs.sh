#!/bin/bash
echo "Analyzing logs in the current directory..."
echo "==============================="
find ~/OneDrive/desktop/DevOps_Lab/Shell-scripting/logs -name "*.log" -mtime -1

echo -e "\nApplication Log Analysis:"
grep "ERROR" ~/OneDrive/desktop/DevOps_Lab/Shell-scripting/logs/application.log

echo -e "\nNumber of Errors logs in application.log:"
grep -c "ERROR" ~/OneDrive/desktop/DevOps_Lab/Shell-scripting/logs/application.log

echo -e "\nNumber of Fatal Errors in application.log:"
grep -c "FATAL" ~/OneDrive/desktop/DevOps_Lab/Shell-scripting/logs/application.log

echo -e "\nNumber of Errors logs in system.log:"
grep -c "ERROR" ~/OneDrive/desktop/DevOps_Lab/Shell-scripting/logs/system.log

echo -e "\nNumber of Fatal Errors in system.log:"
grep -c "FATAL" ~/OneDrive/desktop/DevOps_Lab/Shell-scripting/logs/system.log

echo -e "\nSystem Log Analysis:"
grep "ERROR" ~/OneDrive/desktop/DevOps_Lab/Shell-scripting/logs/system.log