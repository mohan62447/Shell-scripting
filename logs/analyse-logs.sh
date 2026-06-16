#!/bin/bash
echo "Analyzing logs in the current directory..."
echo "==============================="
find . -name "*.log" -mtime -1

echo "Application Log Analysis:"
grep "ERROR" application.log

echo "Number of Errors logs in application.log:"
grep -c "ERROR" application.log

echo "Number of Fatal Errors in application.log:"
grep -c "FATAL" application.log

echo "Number of Errors logs in system.log:"
grep -c "ERROR" system.log

echo "Number of Fatal Errors in system.log:"
grep -c "FATAL" system.log

echo "System Log Analysis:"
grep "ERROR" system.log