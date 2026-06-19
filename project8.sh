#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: Please provide software name as an argument."
    exit 1
fi

if [ $(id -u) -ne 0 ]; then
    echo "This script must be run as root. Please use sudo."
    exit 2
fi

for software in "$@"; do
    if which $software &>/dev/null  then
        echo "$software is already installed."
    else
        echo "$software is not installed. Installing..."
        apt-get update && apt-get install -y $software
        if [ $? -eq 0 ]; then
            echo "$software installed successfully."
        else
            echo "Failed to install $software. Please check your internet connection and package name."
        fi
    fi
    done