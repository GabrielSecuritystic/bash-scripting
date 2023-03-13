#!/bin/bash

#contoh pneggunaan while Loops

#contoh pertama dengan menggunakan 3(tiga)parameter
#cara mengisi parameter dibawah yaitu pada saat dihalaman Terminal inputkan nilainya
#contoh ./namafile.sh nilai1 nilai2 nilai3

echo "Parameter 1: ${1}"
echo "Parameter 2: ${2}"
echo "Parameter 3: ${3}"
echo

#perulangan dengan tambahan parameter
while [[ "${#}" -gt 0 ]]
do
	echo "nomer pada parameters:${#}"
	echo "Parameter 1: ${1}"
	echo "Parameter 2: ${2}"
	echo "Parameter 3: ${3}"
	echo 
	shift
done

