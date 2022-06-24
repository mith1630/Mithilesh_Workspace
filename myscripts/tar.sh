#!/bin/bash

output=$(df -h)
bundle=$(awk -F = '{print $2}' config.txt)
bundlename=$(echo $bundle | awk -F / '{print $11}')  
echo "$output"

wget $bundle
echo "$bundlename"
tar -xzvf "$bundlename"
rm -vf "$bundlename"
