#!/bin/sh
echo "****Power of the number****"
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2

set -x

if [ $num2 -eq 0 ]
then
	ans=1
fi
ans=1
if [[ $num1 -ge 1 && $num2 -ge 1 ]]
then
	for ((i=1;i<=$num2;i++)); 
         do
		 #ans=$(($ans * $num1))
                 ans=`expr $ans \* $num1`
	 echo $ans
     done
fi
if [ $num1 -eq 0 ]
then
    ans=0
fi


echo "The result is:"$ans

