#!/bin/bash

#Implementasi mengenai parameter didalam bash shell scripting

#menampilkan apa yang user tulis didalam commandline
echo "pengguna mengeksusi perintah: ${0}"


#menampilkan path/alur dan nama file didalam commandline
echo "kamu berada di $(dirname ${0}) sebagai path/alur ke dalam $(basename ${0}) script"

#menjelaskan bagaiman semua argumentnya melewati didalam file ini(didalm script)

NUMBER_OF_PARAMETERS="${#}"
echo "supplied ${NUMBER_OF_PARAMETERS} arguments(s) didalam command line"


#membuat arguments paling sedikit(Minimal 1 argument) dalam inputan
if [[ "${NUMBER_OF_PARAMETERS}" -lt 1 ]]
then
	echo "menggunakan :${0} USER_NAME [USER_NAME]..."
	exit 1

fi

#generate and display sebuah password untuk setiap paramater
for USER_NAME in "${@}" 
	#tanda @ digunakan untuk memisahkan setiap array,tapi ketika diganti *(bintang) maka tidak ada pemisahan array(operasi concatenate)

do
	PASSWORD=$(date +%s%N | sha256sum | head -c48)
	echo "${USER_NAME}: ${PASSWORD}"
done

