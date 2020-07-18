#!/bin/bash
echo "******Date and Time Display*******"

currentDate=$(date +"%m/%d/%Y")
echo "Current Date is $currentDate"

currentTime=$(date +"%H:%M:%S")
echo "Current Time is $currentTime"

yesterdayDate=$(date --date="yesterday")
echo "Yesterday Date and Time is $yesterdayDate"

tomorrowDate=$(date --date="tomorrow")
echo "Tomorrow date and Time is $tomorrowDate"

