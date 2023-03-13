#!/bin/bash

<<COMMENTS
syntax dasar untuk mencari panjang karakter string:
    1.  ${#string}  
    2.  expr length "$string"  
    3.  expr "$string" :'.*'  
    4.  $str | wc -c  
    5.  $str |awk '{print length}'  
COMMENTS


#contoh implementasi syntax pertama
str1="contoh string 1 "
length=${#str1}
echo "panjang karakter dari '$str1' is $length"

#contoh implementasi syntax kedua
str2="contoh string 2 "
length2=`expr length "$str2"`
echo "panjang dari '$str2' adalah $length"


#contoh implementasi syntax ketiga
str3="contoh string 3 "
length3=`expr "$str3" : '.*'`
echo "panjangnya '$str3' adalah $length3"


#contoh implementasi syntax keempat
str4="contoh string 4 "
length4=`echo $str4 | wc -c`
echo "panjang karaktenya '$str4' adalah $length4"


#contoh implementasi syntax kelima
str="Welcome to Javatpoint"  
length=`echo $str |awk '{print length}'`  
  
echo "Length of '$str' is $length"  
