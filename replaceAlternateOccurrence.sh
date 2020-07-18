#!/bin/sh
echo "****Replace alternate occurence of word hello for every line in  file****"
read -p "Enter the word you want to replace with:" replaceTo
>replacedFile.txt
#set -x
while read -r line
do
   count=0
   wordcount=`echo $line | wc -w`
     for (( j=1; j<=$wordcount ; j++ ));
   do
    {
          word=`echo $line | awk -v  var="$j" '{print $var}'`
          #echo $word
	  if [ "$word" == "hello" ]
           then
               count=`expr $count + 1`
             if [ `expr $count % 2` == 1 ]
             then
	line=`echo $line | awk -v val="$j"  '{$val="'$replaceTo'"}1'`
             #echo $line
	     fi 
         fi
   }
    done
    count=0
    echo $line >> replacedFile.txt
done < replaceAlternateOccurrence.txt
