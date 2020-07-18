echo "*****String Manipulation and Regular Expression****"
read -p "Enter any string to find the length:" str

#length

echo "The Length of the String is:"${#str}
read -p "Enter any position to get substring from the string:" pos

#substring
flag=true
while $flag
do
	#set -x
 if [[ $pos =~ ^[+-]?[0-9]+$ ]]
	then
		echo "Entered input is valid integer"
		echo "The substring for the string from $pos is:"${str:$pos}
flag=false
else
 echo "sorry , Enter position between 0-9"
 read -p "Enter any position to get substring from the string:" pos

fi
done

#postion of substring
read -p "Enter the substring for the $str to find the position:" substr

flag=true
while $flag
do
if [[ $substr =~ ^[+-]?[a-zA-Z]+$ ]]
then
	echo "Entered input is valid string"
	echo "The position of substring is:"`expr index "$str" $substr`
        flag=false
        
else
       echo "Sorry Enter the valid substring !!!"
       read -p "Enter the substring for the $str to find the position:" substr

fi
done
