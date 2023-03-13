#!/bin/bash

#Contoh penggunaan command tambahan (getopts)

#contoh pertama penggunaan command -l dan menambahkan spesial karakter dengan -s
#dan contoh ini juga menggunakan verbose/kamus dengan menambahkan command -v

<<comments
#set default password length
LENGTH=48
 while getopts vl:s OPTION
 do
	 case ${OPTION} in
		 v)
			 VERBOSE='true'
			 echo 'verbose mode on'
			 ;;
		 l)
			 LENGTH="${OPTARG}"
			 ;;
		 s)
			 USE_SPECIAL_CHARACTER='true'
			 ;;
		 ?)
			 echo 'Invalid option.' >&2
			 exit 1
			 ;;
	 esac
 done

comments

#contoh penerapan getopts dan command opsional kedua
#cara menjalankan program ini:
#./latihan3.sh -v atau pilih opsi perintah yang ada difunction usage dibawah ini

usage(){
	echo "Menggunakan: ${0} [-vs] [-l LENGTH]" >&2
	echo "generate random password"
	echo ' -l LENGTH menentukan panjang password.'
	echo ' -s        menambahkan karakter khusus untuk password'
        echo ' -v        meningkatkan verbositas'
exit 1
}

log(){
local MESSAGE="${@}" 
if [[ "${VERBOSE}" = 'true' ]]
then 
	echo "${MESSAGE}"
fi
}

LENGTH=48
while getopts vl:s OPTION
do

         case ${OPTION} in
                 v)
                         VERBOSE='true'
                         log 'verbose mode on'
                         ;;
                 l)
                         LENGTH="${OPTARG}"
                         ;;
                 s)
                         USE_SPECIAL_CHARACTER='true'
                         ;;
                 ?)
                         usage
                         ;;
         esac
 done

#contoh  menambahkan sebuah argument pada script yang akan dijalankan
#cara memanggilnya ./latihan3.sh -sl 8 extra-stuff
<<comment 
Keterangan:
-sl artinya menambahkan karakter khusus ke password dan menambahkan jumlah panjang karakter password dengan panjang karakter 8
arugment pertama memanggil command opsional yaitu -sl
argument kedua memanggil panjang karakter password yang akan digenerate
arguemnt ketiga memanggil nilai yang akan dibuat password
comment

echo "Nomer arugment:${#}" 
echo "semua argument: ${@}"
echo "arugment pertama: ${1}"
echo "argument kedua: ${2}"
echo "arugment ketiga: ${3}"

#memeriksa command tambahan yaitu OPTIND
echo "OPTIND: ${OPTIND}"

#menghapus options/pilihan sambil menyisakan argument
shift "$(( OPTIND - 1 ))"
echo "setelah shift:"
echo "semua argument: ${@}"
echo "arguments pertama: ${1}"
echo "arugment kedua: ${2}"
echo "arugmnet ketiga: ${3}"

#menggunakan pengkondisian untuk mengisi ulang
if [[ "${#}" -gt 0 ]]
then
	usage
fi
 log 'password dibuat'

 PASSWORD=$(date +%s+%N${RANDOM}${RANDOM} | sha256sum | head -c${LENGTH})

 #menambahkan karakter khsus jika diminta utk melakukannya
 if [[ "${USE_SPECIAL_CHARACTER}" = 'true' ]]
 then
	 log 'pilih karakter khusus secara acak'
	 SPECIAL_CHARACTER=$(echo '!@#$%^&*()-+=' | fold -w1 | shuf | head -c1 )
	 PASSWORD="${PASSWORD}${SPECIAL_CHARACTER}"
 fi
 log 'Done'
 log 'ini passwordnya:'

 #menampilkan password yang telah dibuat
 echo "${PASSWORD}"
 exit 0

 #cara menggunakna program diatas: ./latihan3.sh -v ->untuk generate password secara default,dan ./latihan3.sh -l 8 ->untuk membuat password dengan panjang 8 karakter

