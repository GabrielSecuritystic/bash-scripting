#!/bin/bash

#contoh demonstrasi perintah sort dan uniq dengan bash shell scripting

#contoh pertama(menampilkan log sistem riwayat pada web server)
#cara menjalankan script dibawah ini
#./latihan2.sh access_log ->untuk membuka file access_log maka kita harus menggunakan user root

LOG_FILE="${1}"
if [[ ! -e "${LOG_FILE}" ]]
then 
	echo "tidak dapat mmembuka ${LOG_FILE}" >&2
	exit 1
fi

cut -d '"' -f 2 ${LOG_FILE} | cut -d ' ' -f 2 | sort | uniq -c | sort -n | tail -3

