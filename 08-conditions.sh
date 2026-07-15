#!/bin/bash
age=25

if [ $age -gt 18 ] && [ $age -lt 60 ]
then
    echo "Eligible"
    else
    echo "Not Eligible"
fi