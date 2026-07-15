#!/bin/bash


NUMBER1=$1
NUMBER2=$2

echo "Checking first number..."

if [ $NUMBER1 -gt 10 ]
then
    echo "$NUMBER1 is greater than 10"
elif [ $NUMBER1 -lt 10 ]
then
    echo "$NUMBER1 is less than 10"
else
    echo "$NUMBER1 is equal to 10"
fi

echo "Checking second number..."

if [ $NUMBER2 -gt 10 ]
then
    echo "$NUMBER2 is greater than 10"
elif [ $NUMBER2 -lt 10 ]
then
    echo "$NUMBER2 is less than 10"
else
    echo "$NUMBER2 is equal to 10"
fi