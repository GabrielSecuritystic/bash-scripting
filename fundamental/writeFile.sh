#!/bin/bash

#contoh implementasi menuliskan output ke dalam sebuah file
<<COMMENTS
output=file.txt
ls >$output #masukan daftar semua file yang ada dalam satu direktori ke dalam sebuah file.txt
#gedit file.txt  ->#untuk mengedit isi dalam sebuah file.txt

cat $output #menampilkan isi dari file.txt ke layar command line
COMMENTS

#contoh implementasi menuliskan data ke sebuah file
<<COMMENTS
output=file.txt
ls > $output #menuliskan data/membuat data list ke file yg dipanggil
uname -a >> $output #menampilkan informasi sistem yang sedang digunakan, -a digunakan untuk menampilkan informasi all/semuanya
gedit file.txt #memeriksa isi file
COMMENTS

#implementasi mencetak output seperti biasanya ke sebuah file dengan methode ke 2
<<comments
output=file.txt
ls | tee $output #perintah tee digunakan utk membaca standard input,perintah tee biasanya digunakan bersama simbol pipe(|) sebelum menulis perintah tee.
comments

#contoh implementasi method ke2 bagian kedua
output=file.txt
echo "<<<List of Files and Folders>>>" | tee -a $output
ls | tee $output
echo | tee $output
echo "<<<OS name>>>" | tee -a $output
uname | tee -a $output #ini digunakan untuk menampilkan OS yang digunakan

