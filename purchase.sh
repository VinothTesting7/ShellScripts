#!/bin/sh

welcomeScreen()
{
echo "-------------------------------"
echo "     Welcome to online purchase"
echo "-------------------------------"
echo "1. Electonics"
echo "2. Books"
echo "3. Househols items"
echo "4. Groceries"
echo "5. Exit"

 read -p "Enter your choice [ 1 - 5 ] " choice
case $choice in
1) getElectronics ;;
2) getBooks;;
3) getHouseholdItems ;;
4) getGroceries ;;
5) echo "Thank You!!"
   exit 0 ;;
*)
echo "Error: Invalid option..."
      welcomeScreen ;;
esac
}

getElectronics()
{   
	echo "*****Aplication Under Development*****"
	echo "1.Cd player"
	echo "2.Tv"
	echo "3.Fridge"
	echo "4.washing machine"
        echo "5.Go Home page"
read -p "Enter option only "5" to go home" choice
case $choice in
5)  welcomeScreen;;
esac

}
getBooks()
{
	echo "*****Aplication Under Development*****"
	echo "1.java"
	echo "2.Linux scripting"
	echo "3.python"
	echo "4.selenium"
	echo "5.Go home page"
	read -p "Enter option only "5" to go home" choice
case $choice in
5)  welcomeScreen;;
esac

}
getHouseholdItems()
{
	echo "*****Aplication Under Development*****"
	echo "1.chair"
	echo "2.grinder"
	echo "3.ac"
	echo "4.blankets"
        echo "5.Go Home page"
read -p "Enter option only "5" to go home" choice
case $choice in
5)  welcomeScreen;;
esac

}
getGroceries()
{
	echo "*****Aplication Under Development*****"
        echo "1.dry fruits"
        echo "2.oil"
        echo "3.cheese"
        echo "4.milk"
	echo "5.Go Home page"
	read -p "Enter option only "5" to go home" choice
case $choice in
5)  welcomeScreen;;
esac

}
welcomeScreen
