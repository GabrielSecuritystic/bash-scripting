#!/bin/bash

#contoh substring pertama
#mengekstrak hingga karakter tertentu dari string

echo "String:belajar bash shell scripting"
str="belajar bash shell scripting"
echo "total karakter pada sebuah string:${#str}"
substr="${str:0:10}"
echo "substring:$substr"
echo "total karakter didalam substring:${#substr}"

#contoh substring kedua
#untuk mengekstrak dari karakter tertentu dan seterusnya atau onwards/menghapus sebagian string
str2="materi substring"
substr2="${str2:11}"
echo "$substr2"

#contoh substring ketiga
#mengekstrak sebuah karakter tunggal

str3="bash shell"
substr3="${str:3:1}"
echo "$substr3"

#contoh substring keempat
#mengekstrak karakter tertentu dari yang terakhir

str4="we welcome you on javatpoint"
substr4="${str4:(-11)}" #misal substring negatif maka memotongnya dari kanan ke kiri
echo "$substr4"
