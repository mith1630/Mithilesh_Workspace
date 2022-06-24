#!/bin/bash
# Display all number using do while loop

i=0

while [ $i -le 9 ]
do 
   echo Number : $i
   ((i++))
done
