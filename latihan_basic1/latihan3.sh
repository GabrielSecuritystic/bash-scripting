#!/bin/bash

#menampilkan UID dan username (menampilkan apakah user menggunakan vagrant atau tidak)

#menggunakan UID

echo "UID nya yaitu ${UID}"

#menampilkan username
UID_TO_TEST_FOR='1000'

if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
	then
		echo "UID saya tidak sama dengan ${UID_TO_TEST_FOR}."
		exit 1
	fi

#menampilkan username
USER_NAME=$(id -un)

#test apakah perintah diatas berhasil
if [[ "${?}" -ne 0 ]]
then
	echo 'username tidak ditemukan'
	exit 1
fi
echo "username saya adalah ${USER_NAME}"

#cek username secara konvensional/sudah diberikan nilai untuk usernamenya
USER_NAME_TO_TEST_FOR='indonesia'
if [[ "${USER_NAME}" == "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "username saya apakah sama dengan ${USER_NAME_TO_TEST_FOR}"
fi

#test apakah username itu string atau bukan
if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "username tidak sama dengan ${USER_NAME_TO_TEST_FOR}"
	exit 1
fi
exit 0

