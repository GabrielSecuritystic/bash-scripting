#!/bin/bash

#menampilkan UID dan nama pengguna sistem linux yang digunakan

#1 menampilkan UID
echo "UID yang digunakan ${UID}"

#2 menampilkan username yang digunakan
#USER_Nama=$(id -un)
user_name=`id -un`
echo "username linux adalah ${USER_Nama}"
#3 menampilkan pengecekan apakah user yang dipakai root atau user biasa
if [[ "${UID}" -eq 0 ]]
then
	echo "ando menggunakan user root"
else
	echo "bukan user root"
fi

