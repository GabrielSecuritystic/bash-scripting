#!/bin/bash

#contoh implementasi set variable dengan menggunakan perintah tambahn -v
A=100 #set variable
if [[ -v A ]];
then
echo "varriable A sudah di set"
else
echo "variable A belum ada"
fi

if [[ -v B ]];
then
echo "variable B sudah di set"
else
echo "variable B tidak ada"
fi

#contoh implementasi set variable dengan menggunakan perintah tambahan -z,perintah -z digunakan untuk pernyataan false dan langsung menuju ke pilihan dua
A=100
if [[ -z ${A} ]];
then
echo "variable A tidak ada"
else
echo "variable A sudah di set"
fi

if [[ -z ${B} ]];
then
echo "variabel B tidak ada"
else
echo "variable B sudah di set"
fi


#contoh kedua implementasi set variable dengan menambahkan perintah -z
#perintah -z ini akan langsung masuk ke pilihan kedua jika variabel sudah didefiniskan,namun jika tidak teradpat variable yg dipanggil maka tidak akan tampil

VAR=''
if [ -z ${VAR+x} ];
then
echo "VAR sudah dihapus"
else
echo "VAR sudah di set dan isinya adalah '$VAR'"
fi

if [ -z ${Var+x} ];
then
echo "Var sudah dihapus"
else
echo "'Var' sudah di set,isinya adalah '$Var'"
fi
