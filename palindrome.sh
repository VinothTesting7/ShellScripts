
#!/bin/sh
echo "******STRING IS PALINDROME OR NOT******"
read -p "Enter the string to check:" strg
#length=`echo $strg | wc -L`
length=${#strg}
str=`echo $strg | tr [:upper:] [:lower:]`
#echo $str
#set -x
for(( i=$length-1; i>=0; i-- ))
do
reverse="$reverse${str:i:1}"
#echo $reverse
done

if [ "$str" = "$reverse" ]
then
echo "Entered String ""$strg"" is palindrome"
else
echo "Entered String ""$strg"" is not palindrome"
fi
