#!/bin/bash

servers=("frontend" "backend" "database")

echo "The first server is: $(servers[0])"
echo "The second server is: $(servers[1])"
echo "The third server is: $(servers[2])"

echo "All servers are: ${servers[@]}"