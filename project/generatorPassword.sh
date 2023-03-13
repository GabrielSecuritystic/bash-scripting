#!/bin/bash

#contoh pembuatan password generator

echo "contoh project pembuatan generator password"
read PASS_LENGTH

for p in $(seq 1);
do
openssl rand -base64 48 | cut -c1-$PASS_LENGTH #ini merupakan generate password dari angka menjadi huruf acak yg akan digunakan sebagai password
done
