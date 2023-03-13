#!/bin/bash

<<COMMENTS
syntax dasar elseif statement
    if [ condition ];  
    then  
    <commands>  
    elif [ condition ];  
    then  
    <commands>  
    else  
    <commands>  
    fi  
COMMENTS
#contoh penerapan elseif/elif pada condisi statement if_else_if

read -p "masukan nomer:" num
if [ $num -gt 100 ];
then
echo "diskon 10%"
elif [ $num -lt 100 ];
then
echo "diskon 5%"
else
echo "tidak dapat diskon"
fi

#contoh kedua
read -p "Enter a number of quantity:" total  
  
if [ $total -gt 200 ];  
then  
echo "Eligible for 20% discount"  
  
elif [[ $total == 200 || $total == 100 ]];  
then  
echo "Lucky Draw Winner"  
echo "Eligible to get the item for free"  
  
elif [[ $total -gt 100 && $total -lt 200 ]];  
then  
echo "Eligible for 10% discount"  
  
elif [ $total -lt 100 ];  
then  
echo "No discount"  
fi  
