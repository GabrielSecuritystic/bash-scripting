#!/bin/bash

#Latihan tentang Function
<<COMMENTS
log(){
	local VERBOSE="${1}"
	shift
	local MESSAGE="${@}"
	#contoh pemanggiln fungsi verbose
	if [[ "${VERBOSE}" = 'true' ]]
	then
		echo "${MESSAGE}"
	fi
}
#contoh instansiasi objek untuk memanggil nama  function diatas
VERBOSITY='true'

log "${VERBOSITY}" 'COntoh function declaration'
log "${VERBOSITY}" 'pada bash shell scripting'

COMMENTS

#contoh function kedua

<<COMMENTS
log(){
local MESSAGE="${@}"
if [[ "${VERBOSE}" = 'true' ]]
then
	echo "${MESSAGE}"
fi

logger -t latihan2.sh "${MESSAGE}" #statemnt ini berfungsi ketika output pesan pada functon ini tersimpan didalam log(pada direktori /var/log/messages)
}

readonly VERBOSE='true'
log 'hello'
log 'contoh penggunaan function declaration'
COMMENTS

#contoh ketiga (simulasi transfer file)
log(){
local MESSAGE="${@}"
if [[ "${VERBOSE}" = 'true' ]]
then
	echo "${MESSAGE}"
fi
logger -t latihan2.sh "${MESSAGE}"

}

backup_file(){
#bagian function ini digunakan untuk menyimpan backup data dari function yang sudah dijalankan diatas

local FILE="${1}"

if [[ -f "${FILE}" ]]
then
	local BACKUP_FILE="/var/tmp/$(basename ${FILE}).$(date +%F-%N)"
log "backup data dari ${FILE} to ${BACKUP_FILE}."

#status function akan menjadi exit ketika perintah cp dijalankan
cp -p ${FILE} ${BACKUP_FILE}
else
#file yang dibackup tidak tersedia
return 1
fi

}

readonly VERBOSE='true'
log 'contoh program backup daata'
log 'pada bash shell scripting'
backup_file '/etc/passwd'

#membuat keputusan berdasarkan status yang keluar(jika status exit)
if [[ "${?}" -eq '0' ]]
then 
	log 'file berhasiil di backup'
else
	log 'file gagal dibackup'
	exit 1
fi

