#!/bin/bash
#contoh script automation pertama
string="fakhrudin" 
echo "belajar script automation $string"

#contoh script automation kedua
echo "$1 belajar pemrograman $2 scripting" #dimana variable $1 dan $2 diinputkanketika didalam sebuah terminal,caranya(./namafile.sh "masukan nilai variable 1" "masukan nilai variable 2")

#contoh script automation ketiga(menampilkan informasi nama pengguna  sistem)
echo $(whoami)

#contoh script automation keempat(memasukan inputan nilai manual
read nama
echo "siapa nama kamu? $nama"
echo "Salam kenal $nama"

