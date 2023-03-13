#!/bin/bash

#contoh penerapan while loop dengan kondisi tunggal
read -p "masukan nama" $num
read -p "masukan nomer:" $enum

while [[ $snum -le $enum ]];
do
echo $num
((snum++))
done 


#contoh penerapan while loop dengan kondisi multiple
<<COMMENTS
read -p "enter your name: "sname
read -p "enter your number: "snumber

while [[ $sname -lt $snumber || $sname==$snumber ]];
do
echo $sname
((sname++))
done
COMMENTS

#contoh perulangan while dengan menambahkan break statments

echo "Countdown for Website Launching..."  
i=10  
while [ $i -ge 1 ]  
do  
if [ $i == 2 ]  
then  
    echo "Mission Aborted, Some Technical Error Found."  
    break  
fi  
echo "$i"  
(( i-- ))  
done  


#contoh penerapan perulangan while dengan menambahkan continue statement
j=0
while [ $j -le 10 ]
do
((j++))
if [[ "$j" == 5 ]]; #jika i sudah 5 maka akan dilanjutkan namun angka 5 tidak ditampilkan
then 
continue
fi
echo "nomer :$j"
done


#contoh penerapan while loop dengan c style
i=1
while((i<=10))
do 
echo $i
let i++
done
