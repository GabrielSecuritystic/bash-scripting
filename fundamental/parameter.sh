#!/bin/bash

echo "eksekusi script ini:$0"
echo "masukan nama pengguna:$1"
#bagian menambahkan pengguna baru
adduser --home /$1 $1

