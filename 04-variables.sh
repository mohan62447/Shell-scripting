#!/bin/baash

echo "please enter your pin number"

read firstName Lastname #It will display when we enter the pin on diaplay, if we dont want dispaly what we enter we can use -s
read -s PIN

echo "$firstName"
echo "$Lastname"
echo "your pin number is $PIN"