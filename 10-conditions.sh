#!/bin/bash

NUMBER=$1
Number=$2

if [ $NUMBER -gt 10 ]
then
    echo "The number is positive"
elif [ $NUMBER -lt 10 ]
then
    echo "The number is negative"
else
    echo "The number is ten"
fi