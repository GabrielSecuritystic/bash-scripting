#!/bin/bash

#contoh pertama membaca sebuah dengan bash shell scripting
value=`cat file.txt`
echo "$value"

#contoh kedua membaca sebuah file dengan bash shell scripting
value2=$(<file.txt) #tanda < digunakan untuk merujuk pada sebuah variable yg mana nama file yg dipanggil akan dimasukan ke dalam sebuah variabel yg ditunjuk
echo "$value2"


#contoh implementasi membaca sebuah isi file

file2='file.txt'
i=1
while read line; do

echo "baris ke .$i : $line"
i=$((i+1))
done < $file2


#contoh implementasi melewati filename dari command line dan membaca filenya
file=$i
while read line; do
echo $line
done <file.txt

#implementasi membaca sebuah dengan menghilangkan sebuah karakter backslish
while read -r line; do
echo $line
done < file.txt
