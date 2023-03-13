#!/bin/bash

#contoh implementasi split string oleh spasi
read -p "Enter any string separated by space: " str  #reading string value  
  
IFS='' #setting space as delimiter  
read -ra ADDR <<<"$str" #reading str as an array as tokens separated by IFS  
  
for i in "${ADDR[@]}"; #accessing each element of array  
do  
echo "$i"  
done  

#contoh implementasi split string oleh symbol

read -p "masukan nama,status dan umur dipisahkan oleh koma: " entry #digunakan untuk membaca nilai string

IFS=',' #menggunkan ,sebagai symbol
read -a strarr <<<"$entry" #membaca string sebagai array yg digunakan sebagai token
echo "Nama: ${strarr[0]}"
echo "Status: ${strarr[1]}"
echo "Umur : ${strarr[2]}"



#penerapan splitString tanpa menggunakan IFS/Internal Field Separator

#contoh implementasi pertama(split string oleh symbol)

read -p "masukan sebuah string dipisahkan oleh titikdua/colon(:) " str2 #membaca nilai string

readarray -d : -t strarr <<<"$str2" #readarray dan opsi -d digunakan untuk split array ketika tidak menggunakan IFS variable
printf "\n"

for((n=0; n < ${#strarr[*]}; n++))
do
echo "${strarr[n]}"
done


#contoh penerapan kedua(split string oleh string lain)
str3="WeLearnWelcomeLearnYouLearnOnLearnJavatpoint"  
delimiter=Learn  
s=$str3$delimiter  
array=();  
while [[ $s ]];  
do  
array+=( "${s%%"$delimiter"*}" );  
s=${s#*"$delimiter"};  
done;  
declare -p array  
 tri
#contoh penerapan ketiga(split string oleh perintah trim)
my_str="We;welcome;you;on;javatpoint."  
my_arr=($(echo $my_str | tr ";""\n"))  
  
for i in "${my_arr[@]}"  
do  
echo $i  
done
