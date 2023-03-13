#!/bin/bash

#Latihan tentang Case Statement

#latihan IF case statement
#cara menjalankan program dibawah ./latihan1.sh start
<<comments

if [[ "${1}" = 'start' ]]
then
	echo "Mulai."
elif [[ "${1}" = 'stop' ]]
then
	echo "Stop."

elif [[ "${1}" = "status" ]]
then
	echo "Status:"
else
	echo "berikan opsi/pilihan yang valid.">&2
	exit 1

fi

comments

#latihan Case statement(Switch case)
<<comments
case "${1}" in
	start)
		echo "Mulai."
		;;
	stop)
		echo "Stop."
		;;
	status|state|--status|--state)
		echo "Status."
		;;
	*)
		echo "Berikan opsi yang valid." >&2 #ini akan berjalan ketika tidak memasukan opsi selain diata(start,stop,status/state)
		exit 1
		;;
	esac

comments

#clean code switch case statement
case "${1}" in
	start) echo "mulai." ;;
	stop) echo "stop." ;;
	status) echo "status." ;;
	*)
		echo "berikan opsi yang valid" >&2
		exit 1
		;;
esac

