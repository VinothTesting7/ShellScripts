#!/bin/bash/
#set -x
echo "*** LARGEST OF THREE NUMBERS ***"
read -p "Enter first number " A
read -p "Enter second number " B
read -p "Enter third number " C

if [ $A -gt $B ] && [ $A -gt $C ]
then
    echo "The largest number is A = " $A
fi
if [ $B -gt $A ] && [ $B -gt $C ]
then
    echo "The largest number is B = " $B
fi
if [ $C -gt $A ] && [ $C -gt $B ]
then
    echo "The largest number is:" $C
fi
