#!/bin/bash

#contoh testScript untuk mengecek direktori yang tersedia pada sistem
if [ -d Documents/bash_script2/contoh ];
then
	echo "direktori sudah tersedia"
else
	echo "direktori belum ada"
fi

#contoh untuk mengecek file yang tersedia
if [ -e /Documents/bash_script2/pengkondisian.sh ];
then 
	echo "file tersedia"
else
	echo "file tidak ada"
fi

