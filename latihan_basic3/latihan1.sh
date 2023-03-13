#!/bin/bash


#Latihan implementasi INput/Output pada bash shell scripting

#contho penerapan redirect/mengalihkan output atau STDOUT ke sebuah file

FILE="/tmp/data"
head -n1 /etc/passwd > ${FILE}

#contoh penerapan mengalihkan STDIN/input ke sebuah program

read LINE < ${FILE}
echo "Baris ini berisi: ${LINE}"

#mengalihkan STDOUT/output ke sebuah file,dan menulis ulang file itu
head -n3 /etc/passwd > ${FILE}
echo 
echo "memuat isi dari ${FILE}:"
cat ${FILE}

#mengalihkan STDOUT/output ke sebuah file,menambahkan ke dalam file
echo "${RANDOM} ${RANDOM}" >> ${FILE}
echo "${RANDOM} ${RANDOM}" >> ${FILE}
echo
echo "Isi dari ${FILE}:"
cat ${FILE}

#mengalihkan/ReDIRECT  STDIN ke sebuah program menggunakan FD 0

read LINE 0< ${FILE}
echo
echo "BARIS ini berisi; ${LINE}"

#mengalihkan/redirect STDOUT ke sebuah file menggunakan FD1,menulis ulang file
head -n3 /etc/passwd 1> ${FILE}
echo
echo "isi dari ${FILE}:"
cat ${FILE}

#mengalihkan/redirect STDERR(untuk menangani error inputan) ke sebuah file menggunakan FD2

ERR_FILE="/tmp/data.err"
head -n3 /etc/passwd/fakefile 2> ${ERR_FILE}


#mengalihkan/redirect STDOUT dan STDERR kesebuah file
head -n3 /etc/passwd /fakefile &> ${FILE}
echo
echo "COntent dari ${FILE}:"
cat ${FILE}

#mengalihkan/redirect STDOUT dan STDERR melalui sebuah pipe/saluran
echo
head -n3 /etc/passwd /fakefile |& cat -n

#mengirim output ke STDERR
echo "ini adalah untuk menangani inputan!" >&2

#menghapus STDOUT
echo
echo "Membatalkan STDOUT:"
head -n3 /etc/passwd /fakefile > /dev/null

#membatalkan STDERR
echo 
echo "Membatalkan STDERR:"
head -n3 /etc/passwd /fakefile 2> /dev/null

#membatalkan/discard STDOUT dan STDERR
echo 
echo "Membatalkan STDOUT dan STDERR:"
head -n3 /etc/passwd /fakefile &> /dev/null


#clean up/menghapus semuanya
rm ${FILE} ${ERR_FILE} &> /dev/null


<<comments
KETERANGAN

FD 0 artinya standard Input
FD 1 artinya standard output
FD 2 artinya standard error
comments


