#!/bin/bash

#implementasi string dengan menggunakan equals operator/operator sama dengan
str1="WelcometoJavatpoint."  
str2="javatpoint"  
  
if [ $str1 = $str2 ];  
then  
echo "Both the strings are equal."  
else  
echo "Strings are not equal."  
fi  

#implementasi string dengan menggunakan not equals operator/operator tidak sama dengan
str3="contohstring"
str4="bashShell"
if [[ $str3 != $str4 ]];
then
echo "string ini tidak sama"
else
echo "string diatas sama"
fi

#implementasi string dengan less than operator lambang operatornya \<
str5="contoh3"
str6="bashShell"
if [ $str5 \< $str6 ];
then
echo "$str5 kurang dari atau less then $str6"
else
echo "$str5 ini tidak kurang dari $str6"
fi

#implementasi string dengan greater than opearotr itu lambang operatornya \>

str7="contoh4String"
str8="bashShell"
if [ $str7 \> $str8 ];
then 
echo "$str7 lebih besar/greater than dari $str8"
else
echo "$str7 lebih kecil atau less then $str8"
fi


#implementasi string dengan mengecek apakah panjang string lebih dar nol operator -n 

str="contohpengecekan"
if [ -n $str ];
then
echo "string tidak tersedia"
else
echo "string kosong"
fi

#implementasi string jika panjang string itu nol lambang operatornya -z

str10=""
if [ -z $str10 ];
then
echo "string kosong"
else
echo "string tidak kosong"
fi

