#!/bin/bash

<<comments

berikut perintah tambahan yang sering digunakan dalam pengecekan sebuah file/direktori:
-b File Returns 	'True' if the FILE exists as a block special file.
-c File Returns 	'True' if the FILE exists as a special character file.
-d File Returns 	'True' if the FILE exists as a directory.
-e File Returns 	'True' if the FILE exists as a file, regardless of type (node, 
                         directory, socket, etc.).
-f File Returns 	'True' if the FILE exists as a regular file (not a directory or 
                         device).
-G File Returns 	'True' if the FILE exists and contains the same group as the 
                         user is running the command.
-h File Returns 	'True' if the FILE exists as a symbolic link.
-g File Returns 	'True' if the FILE exists and contains set-group-id (sgid) flag 
                         set.
-k File Returns 	'True' if the FILE exists and contains a sticky bit flag set.
-L File Returns 	'True' if the FILE exists as a symbolic link.
-O File Returns 	'True' if the FILE exists and is owned by the user who is 
                         running the command.
-p File Returns 	'True' if the FILE exists as a pipe.
-r File Returns 	'True' if the FILE exists as a readable file.
-S File Returns 	'True' if the FILE exists as a socket.
-s File Returns 	'True' if the FILE exists and has nonzero size.
-u File Returns 	'True' if the FILE exists, and set-user-id (suid) flag is set.
-w File Returns 	'True' if the FILE exists as a writable file.
-x File Returns 	'True' if the FILE exists as an executable file.
comments
<<COMMENTS
perintah tambahan -f digunakan untuk mengembalikan sebuah nilai
COMMENTS
#menggunakan method pertama
#contoh pertama implementasi pengecekan sebuah file
file=file.txt
if test -f "$file";
then
echo "$file exist"
fi


#contoh kedua implementasi pengecekan sebuah file
file2=file.txt
if [ -f "$file2" ];
then
echo "$file2 exist"
fi

#contoh ketiga implementasi pengecekan sebuah file
file3=file.txt
if [[ -f "$file3" ]];
then
echo "$file3 sudah ada"
fi


#contoh keempat implementasi pengecekan sebuah file
file4=file.txt
[ -f file.txt ] && echo "$file4 tersedia"

#contoh pertama implementasi pengecekan sebuah direktori apakah sudah tersedia atau belum
<<comments
perintah tambahan -d ini akan memungkinkan untuk mengetes apakah sebuah file didalam direktori atau tidak
comments

file5=Documents
if [ -d "$file5" ];
then
echo "$file5 sebuah direktori"
fi



#contoh kedua implementasi pengecekan sebuah direktori 
dir=pemrograman_bash
[ -d "$dir" ] && echo "$dir sebuah direktori"



#contoh implementasi pengecekan file yg tidak tersedia
file6=test.txt
if [ ! -f "$file6" ];
then
echo "$file6 tidak tersedia"
fi

#contoh kedua implementasi pengecekan file yang tidak tersedia
file7=test.txt
[ ! -f "$file7" ] && echo "$file7 tidak tersedia"
