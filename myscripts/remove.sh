#!/bin/bash
echo "Enter Filename"
read file
if [ -f $file ]
then
echo "Enter the file name you want to delete"
read $file
rm -i $file
echo "$file Files is DELETED"
else
echo "Files does not EXIST"
fi ;