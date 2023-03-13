#!/bin/bash

#contoh demonstrasi tentang pembuatan akun di sistem lokal dengan bash shell scripting

#1.bagian membuat username

read -p 'masukan username yang akan dibuat: ' USER_NAME

#2.bagian membuat real name

read -p 'Masukan nama untuk sebuah akun: ' COMMENT

#3.membuat user account

read -p 'MAsukan password yang akan digunakan untuk akun ini: ' PASSWORD


#4.membuat user
useradd -c "${COMMENT}" -m ${USER_NAME}

#5.menyetel password akun pengguna
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

#6.membuat fitur password login
passwd -e ${USER_NAME}

