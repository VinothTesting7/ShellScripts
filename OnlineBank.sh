#!/bin/bash
#file used to store the customer information
file=bankrecords.txt

# get input from the user welcome screen method
 
welcomeScreen()

{
echo " "

echo "------------Welcome to Banking-------------------"
echo " "
echo "     M A I N - M E N U"

echo "-------------------------------"

echo "1. Create new bank account"

echo "2. Login as User"

echo "3. Exit"

 

read -p "Enter your choice [ 1 - 3 ] " choice

case $choice in

1) createAccount ;;

2) userLogin  ;;

3) echo "Thank You!!"

   exit 0 ;;

*)

echo "Error: Invalid option..."

      welcomeScreen ;;

esac

}

 

createAccount()

{
 echo "Open a New account"
echo "********************************Enter the Customer Details******************************************"
                        read -p "Enter the First Name: " fname
                        read -p "Enter the Second Name: " sname
                        read -p "Enter the PAN details: " panno
                        read -p "Enter the Address: " address
                        read -p "Enter the Opening account balance: " AccountBalance
                       
                        
                        RANDOM=$$
                        #R=$(( $RANDOM % 10 + 1 ))
                        
                       
 AccountNumber=$(shuf -i 99999999999-999999999999 -n 1)

 #AccountNumber=$( printf "%06d%06d" ${RANDOM} ${RANDOM} )
                        echo "The Account number is $AccountNumber"
 echo "--------------Hello "$fname", The Account got created successfully!! and the account number is $AccountNumber--------------"

account["$AccountNumber"]=$AccountBalance

echo "$fname;$AccountNumber;$AccountBalance" >>$file

read -p "Press [Enter] key to continue..." readEnterKey

welcomeScreen

}

 

userLogin()

{
echo " "
echo "********Customer Login****************"
echo " "
read -p "Enter the Customer First Name to login: " userName
read -p "Enter the Password: " password
 name=$(grep -ic "$userName" $file)
if [ $name -eq 1 ]; then
echo "User exists"
      echo "Welcome $userName"

      echo "1. Display the account balance"

      echo "2. Put account balance in a file"

      echo "3. Logout"

 

read -p "Enter your choice [ 1 - 3 ] " option

case $option in

   1) read -p "Enter your Account Number: " AccountNo
accountnum=$(grep -i "$userName" $file | awk -F ';' '{print $2}')
accountbal=$(grep -i "$userName" $file | awk -F ';' '{print $3}')
    

      if [ $AccountNo = ${accountnum} ]

      then

      echo "Your account balance is: $accountbal"

      else

         echo "!!!Please check your account number"

 

      fi



      read -p "Press [Enter] key to continue..." readEnterKey

      welcomeScreen ;;

 

   2) read -p "Enter your Account Number: " AccountNo
accountnum=$(grep -i "$userName" $file | awk -F ';' '{print $2}')
accountbal=$(grep -i "$userName" $file | awk -F ';' '{print $3}')
      

      if [ $AccountNo = ${accountnum} ]

      then

      echo "Your account balance is: $accountbal"
 echo "Welcome $userName!! For you account number $accountnum, the balance is $accountbal" > statement_$accountnum.txt
echo "Your statement is downloaded... and is available as statement_$accountnum.txt"
echo "The contents of the file are "
cat statement_$accountnum.txt

      else

         echo "!!!Please check your account number"

      fi


      read -p "Press [Enter] key to continue..." readEnterKey

     welcomeScreen ;;


   3) welcomeScreen ;;

   *) echo "Error: Invalid option..."

      welcomeScreen ;;

esac

  else

          echo "!!!User not found!!!"

          welcomeScreen

fi

}

welcomeScreen

