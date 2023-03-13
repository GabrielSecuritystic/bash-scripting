#!/bin/bash

#Materi tentang variable
#contoh 1
name="fahrudin"
echo "nama saya adalah: $name" #cara memasukan nama variable supaya bisa tampil outputnya

#contoh 2
sport="foot"
echo "olahraga yang paling banyak diminati yaitu:${sport}ball" #cara memanggil varibel dengan menggunakan kurung kurawal/kali bracket{}.Dimana kali bracket tsb digunakan untuk sebuah operasi concatenate/penghubung sebuah data antar string/kkarakter

#contoh 3
STUDENT_01="John"
#01_STUDENT="Alex"
#STR="$STUDENT_01$01_STUDENT" #penulisan variable tidak boleh sama walaupun nama variable hanya dibolak_balik 
echo "nama ${STUDENT_01}"

