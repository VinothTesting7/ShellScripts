#!/bin/sh
echo "******STRING REVERSE******"
read -p "Enter the string to reverse:" str
#length=`echo $str | wc -L`
length=${#str}
echo $length
n=1
#set -x
for(( i=$length-1; i>=0; i-- ))
do
reverse="$reverse${str:i:1}"
#echo $reverse
done
echo "The reversed string is: $reverse"
