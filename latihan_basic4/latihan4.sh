#!/bin/bash

#Pembuatan skrip untuk menghapus pengguna disistem linux

#langkah1.harus menggunakan root user
if [[ "${UID}" -ne 0 ]]
then 
	echo "mohon menggunakan user root" >&2
	exit 1
fi

#langkah2.menganggap argument pertama adalah pengguna yang akan dihapus
USER="${1}"

#langkah3. hapus pengguna pada langkah 2
userdel ${USER}

#langkah4.memastikan bahwa pengguna pada langkah 2 dan 3 telah dihapus
if [[ "${?}" -ne 0 ]]
then 
	echo "akun ${USER} tidak berhasil dihapus" >&2
	exit 1
fi

#langkah5.memberi tahu bahwa akun sudah berhasil dihapus
echo "akun ${USER} sudah berhasil dhapus"
exit 0

<<comments
cara menggunakan script diatas:
./latihan4.sh masukanuseryang_akandihapus
comments
