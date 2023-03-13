#!/bin/bash

#contoh if else I->bernilai true
if [ 10 -gt 3 ];
then
echo "10 is greater than 3"
else
echo "10 is not greater than 3"
fi

#contoh kedua bernilai false
if [ 3 -lt 10 ];
then
echo "3 lebih besar dari 10"
else
echo "3 lebih kecil dari 10"
fi


#contoh if else condisi banyak/multipel dengan berniali benar/true
#yang bernilai true&&false||false||true



#contoh if else condisi banyak/multiple dengan bernilai false/salah
if [[ 10 -gt 9 && 10==8 || 3 -gt 4 || 8 -gt 8 ]];
then 
echo "condisi bernilai true"
else
echo "condisi bernilai false"
fi


#contoh penggunaan if else statemnt pad batis tunggal
read -p "masukan nilai:" value
if [ $value -gt 9];
then 
echo "nomor lebih dari sembilan"
else
echo "salah"
fi

#contoh penggunaan if else statement dengan percabngan/nested
read -p "masukan nilai: " nilai
if [ $nilai -gt 9 ];
then
if [ $nilai -lt 11 ];
then
echo "$nilai>9,$nilai<11"
else
echo "kebanyakan berdasarkan nilai diatas 8"
fi
else echo "nomer yang harus dimasukan tidak lebih dari 9"
fi
