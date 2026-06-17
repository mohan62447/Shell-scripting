#!/bin/bash

echo "check disk usage in my system"
disk_size=$(df -h | grep "C/Program Files/Git" | awk 'NR==1 {gsub("%","",$6); print $6}')
echo "$disk_size% disk usage is above the threshold of 80%"
if [ "$disk_size" -gt 80 ]; then
    echo "Disk usage is above the threshold. Please take necessary actions."
else
    echo "Disk usage is within the acceptable range."
fi