#!/bin/bash 
echo "*****Check number is Palindrome or not *****"
echo -n "Enter a number: "
read no

number=$no
numrev=""
 
while [ $number -gt 0 ]
do
    remainder=$(( $number % 10 )) 
    number=$(( $number / 10 )) 
    numrev=$(echo $numrev$remainder) 
    #:wqecho $numrev
done
 
if [ $no = $numrev ]
then
  echo "Entered Number $no is a palindrome"
else
  echo "Entered Number $no is not a palindrome"
fi
