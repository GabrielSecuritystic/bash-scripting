#!/bin/bash

#contoh implementasi pertama concatenate string
#contoh penggabungan variable bersebalahan

str1="selamat datang"
str2="selamat belajar bash shell"

#membuat variable untuk menggabungkan kedua variable diatas
str3="$str1 $str2"
echo "$str3"


#contoh implmentasi kedua
#menggunakan double quote/petik ganda
st1="belajar"
echo "$st1 bash shell scripting"

#contoh implementasi ketiga
#menggunakan operator tambah dengan looping
lang=""
#menambahkan looping didalamnya
for value in 'java''python''c++';
do
lang+="$value" #menambahkan operator assignment increment
done
echo "$lang"

#contoh implementasi keempat
#menggunakan printf function

strone="welcome"
printf -v new_str "$strone to bash shell"
echo $new_str

#contoh implementasi kelima
#menggunakan literal string

strtwo="belajar"
newstr="${strtwo} bash shell"
echo "$newstr"


#contoh implementasi keenam
#menggunakan underscore

str5="hello"
str6="world"
echo "${str5}_${str6}"


#contoh implementasi ketujuh
#menggunakan setiap karakter
read -p "masukan nama depan: "name
read -p "masukan status: " state
read -p "masukan umur: " age

combine="$name,$state,$age"
echo "Name,State,Age:$combine"
