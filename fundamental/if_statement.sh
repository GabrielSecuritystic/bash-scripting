#!/bin/bash


<<COMMENTS
syntax dasar if statement didalam bash shell scripting
    if [ expression ];  
    then  
    statements  
    fi  

jika terdpat operator logika tambahan
f [ expression_1 ] && [ expression_2 ];  
then  
statements  



Options (Operators) 	Description
! EXPRESSION 		To check if EXPRESSION is false.
-n STRING 		To check if the length of STRING is greater than zero.
-z STRING 		To check if the length of STRING is zero (i.e., it is empty)
STRING1 == STRING2 	To check if STRING1 is equal to STRING2.
STRING1 != STRING2 	To check if STRING1 is not equal to STRING2.
INTEGER1 -eq INTEGER2 	To check if INTEGER1 is numerically equal to INTEGER2.
INTEGER1 -gt INTEGER2 	To check if INTEGER1 is numerically greater than INTEGER2.
INTEGER1 -lt INTEGER2 	To check if INTEGER1 is numerically less than INTEGER2.
-d FILE 		To check if FILE exists and it is a directory.
-e FILE 		To check if FILE exists.
-r FILE 		To check if FILE exists and the read permission is granted.
-s FILE 		To check if FILE exists and its size is greater than zero 				(which means that it is not empty).
-w FILE 		To check if FILE exists and the write permission is granted.
x FILE 			To check if FILE exists and the execute permission is granted.
COMMENTS

#contoh if statement pertama
#perintah gt artinya greater than = lebih dari
read -p " Enter number : " number  
  
if [ $number -gt 125 ]  
then  
echo "Value is greater than 125"  
fi  

#contoh if statement kedua dengan sebuah output booelan false atau true
#if condition jika bernilai true
if [ "myfile" ==  "myfile" ];
then 
echo "true condiition"
fi

#contoh if statement dengan tambahan lt/lesser than=kurang dari
read -p "masukan nomer: " no
if [ $no -lt 10 ];
then
echo "`expr $no `lebih kecil dari 10" #artinya ketika bilangan yang diinput kurang dari 10 maka akan tercetak echonya
fi

#contoh if statement dengan condition equals to atau sama dengan dan bernilai true
if [ 10 -eq 10 ];
then
echo "10 sama dengan 10"
fi


#contoh if statement condition,dimana terdapat 2 kondisi yang satu false dan satu true
#TRUE&&FALSE
if [ "mylife" == "mylife" ] && [ 3 -gt 10 ];  
then  
echo "Conditions are false"  
fi  

#contoh if statement dengan condisi false dan true dnegan menggunakan operator logika atau ||
if [ "mylife" == "mylife" ] || [ 3 -gt 10 ];  
then  
echo "Conditions are true"  
fi  


#contoh if statement dengan tambahan tiga operator logika 
# TRUE && FALSE || FALSE || TRUE  
if [[ 10 -eq 10 && 5 -gt 4 || 3 -eq 4 || 3 -lt 6 ]];  
then  
echo "Condition is true."  
fi  

#contoh if statement dengan tiga operator logika bagian dua(bernilai false)
# TRUE && FALSE || FALSE  
if [[ 8 -eq 8 && 8 -gt 10 || 9 -lt 5 ]];  
then  
echo "Condition is false"  #hasil tidak tampil karena hasilnya false
fi  

#contoh if statement dengan nested if
<<COMMENTS
$1 = 60;
if [ $1 -gt 50 ]  
then  
  echo "Number is greater than 50."  
  
  if (( $1 % 2 == 0 ))  
  then  
    echo "and it is an even number."  
  fi  
fi  
COMMENTS
