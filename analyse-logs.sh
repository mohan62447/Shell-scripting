#!/bin/bash
echo "Analyzing logs in the current directory..."
echo "==============================="
find . -name "*.log" -mtime -1

echo -e "\nApplication Log Analysis:"
grep "ERROR" application.log

echo -e "\nNumber of Errors logs in application.log:"
grep -c "ERROR" application.log

echo -e "\nNumber of Fatal Errors in application.log:"
grep -c "FATAL" application.log

echo -e "\nNumber of Errors logs in system.log:"
grep -c "ERROR" system.log

echo -e "\nNumber of Fatal Errors in system.log:"
grep -c "FATAL" system.log

echo -e "\nSystem Log Analysis:"
grep "ERROR" system.log