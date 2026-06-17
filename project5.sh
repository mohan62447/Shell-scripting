#!/bin/bash 

echo "Downloading the promethueus binary file from the official website"
if [ -e /home/ubuntu/Shell-scripting/prometheus-3.6.0.linux-amd64.tar.gz ]; then
    echo "Prometheus binary file already exists. Skipping download."
    tar -zxvf prometheus-3.6.0.linux-amd64.tar.gz
else
echo "Prometheus binary file does not exist. Downloading..."
    wget https://github.com/prometheus/prometheus/releases/download/v3.6.0/prometheus-3.6.0.linux-amd64.tar.gz
    tar -zxvf prometheus-3.6.0.linux-amd64.tar.gz
    echo "Prometheus binary file downloaded and extracted successfully."
    fi