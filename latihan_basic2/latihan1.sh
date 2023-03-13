#!/bin/bash

#membuat generate number password
PASSWORD="${RANDOM}"
echo "${RANDOM}"

#membuat angka acak 3nomer
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

#menggunakan tanggal/waktu yang sedang berjalan untuk membuat passsword acak
PASSWORD=$(date +%s)
echo "${PASSWORD}"

#menggunakan nanosecond untuk random nomer password
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

#membuat password lebih baik lagi
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"

#membuat random password dengan enkripsi sha256
PASSWORD=$(date +%s%N${RANDOM} | sha256sum | head -c48)
echo "${PASSWORD}"

#menambahkan karakter khusus kedalam generate random password
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_-+=' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"

