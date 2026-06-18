#!/bin/bash

# How to use a for loop in shell scripting to loop over entries?

# Project: We will loop over the contents of a specified directory and delete all the contents one by one.
for folder in $(find /home/ubuntu/ -type d); do
echo "the folder is $folder"
if [ -d "test" ]; then
    echo "Deleting the folder $folder"
    rm -rf "/home/ubuntu/test"
    echo "Folder $folder deleted successfully."
else
    echo "$folder is not a directory. Skipping."
fi
done