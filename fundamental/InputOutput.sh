#!/bin/bash

#Materi tentang  inputan 
#contoh pertama
read -p "masukan nama: " name #-p merupakan singkatan dari prompt dimana user bisa memasukan inputan dan akan dibaca/read

echo "nama kamu adalah $name"


#contoh kedua
echo "masukan nama lengkap: "
read fname lname
echo "nama depan kamu adalah: $fname"
echo "nama belakang kamu adalah: $lname"
echo "nama lengkap kamu $fname $lname"
read -p "masukan umur: " age
echo "umur kamu $age"

