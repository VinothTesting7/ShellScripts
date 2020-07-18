#!/bin/sh
echo "*****Word substitution in a file*******"
echo "Enter the filename"
read  fname
if [ -e $fname ]
then 	  
 echo "Enter the word to replace"
 read  wordSearch
 echo "Enter the word to replace with"
 read  wordReplace
 echo "Enter the line number where you to want to replace"
 read  lineno

 reg='^[0-9]{2}$'
 while [[ ! $lineno =~ $reg ]]
 do
   echo "invalid input"
   exit
 done

else
  echo "The file doesn't exist"
  exit
 fi

 linenumber=0


while read line
 do
	linenumber=`expr $linenumber + 1`
	echo $linenumber
	echo $line
        IFS=' ' read -ra words <<< "$line"
        for word in "${words[@]}"
	do

	   if [ $word = $wordSearch -a $lineno -eq $linenumber ]
	   then
           sed  -i "${lineno} s/${wordSearch}/${wordReplace}/" ${fname}
            fi
	      
	  done
done < $fname
       
echo  "*******Reading file after replacement*********"
       
cat $fname


