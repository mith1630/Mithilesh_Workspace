#!/bin/bash

echo "Enter the value of a and b"
read a
read b
echo "Enter Operation"
read op
case $op in
+) c=`expr $a + $b` ;;
-) c=`expr $a - $b` ;;
/) c=`expr $a / $b` ;;
\*) c=`expr $a \* $b` ;;
*) echo "" ;;
esac
echo Result=$c
