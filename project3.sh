#!/bin/bash
#Find the first 10 biggest file in the file system and write the output to a file.

echo "This file will get the first 10 biggest files in the file system and write the output to a file."
path=$1
echo $path
du -ah $path | sort -rh | head -n 5 > file.txt
echo "this is the output of the first 5 biggest files in the file system and written to a $path"
cat file.txt
