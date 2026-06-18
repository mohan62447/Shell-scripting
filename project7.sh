#!/bin/bash

echo "****** checking the docker status is running or not ******* "
STATUS=$(systemctl status docker |awk 'NR==3 {print}' |cut -d ':' -f 2 | cut -d '(' -f 1)
echo "$STATUS"

if [ "$STATUS" = "active" ];
then
	echo "docker is running"
else
	echo "docker is not in active status"
	sudo systemctl start docker
fi
