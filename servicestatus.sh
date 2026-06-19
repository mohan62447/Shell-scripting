#!/bin/bash

echo "we are cheking service status"
read -p "Enter the service name :" service_name

if [ $service_name -eq 0 ];
then 
	echo "enter the valid service name"
else
	systemctl status $service_name
fi
