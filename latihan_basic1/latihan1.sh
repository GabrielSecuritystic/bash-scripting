#!/bin/bash

#arti simbol karakter khusus
<<comments
#  ->sharp
!  ->bang
#! ->shebang artinya digunakan untuk interpreter
comments

#menampilkan hello
echo 'hello';

#menambahkan sebuah variable dan assignment value/nilai inputan
#pemberian nama sebuah variable harus menggunakan huruf biasa/alfabet tidak bisa menambahkan angka ataupun karakter khusus

#contoh assignment value pada variable
word='script'
echo '$word'

#demonstrasi menggunakan single quotes/petik tunggal yang menyebabkan variable tidak bisa dikeluarkan
echo "contoh demonstrasi pada bash $word"

#menampilkan content/isi pada sebuah variable dengan menggunakan syntax alternatif
echo "contoh pemrogrman pada bash $word"

#menambhakn text setelaha pemanggilan sebuha nilai pada sebuah variable
echo "${word} shell untuk automation"

#menampilkan bagaimana penambahan sebuah text pada variable tidak dapat bekerja
echo "$word program automation" #hasilnya akan blank

#membuat sebuah variable baru
ending='ed'

#menggabungkan dua variable
echo "contoh penggabungan dua variable ${word}${ending}"

#mengubah nilai masukan pada sebuah variable atau memasukan nilai ulang
ending='ing'
echo "${word}${ending}"

#memasukan nilai ulang pada variable
ending='s'
echo "belajar bash ${word}${ending}"

