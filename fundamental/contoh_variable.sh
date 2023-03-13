#!/bin/bash
#contoh penggunaan variable System atau System-defined variable
echo $HOME #menampilkan direktori home
echo $PWD #menampilkan direktori yang saat ini digunakan
echo $BASH #nama file bash yang digunakan
echo $BASH_VERSION #versi dari bash shell
echo $LOGNAME #menampilkan nama pengguna sistem
echo $OSTYPE #menampilkan tipe os yang digunakan

#contoh penggunaan variable user atau user-defined variable
name=udin
ROLL_NO=12345
echo "perkenalkan saya $name dan nim saya $ROLL_NO"

#contoh penggunaan variable dengan menggabungkan varible lain

nama_depan=muhammad
nama_belakang=fakhruddin
echo $nama_depan $nama_belakang


<<COMMENTS
menambahkan argument dalam pemrograman bash

    $0 specifies the name of the script to be invoked.
    $1-$9 stores the names of the first 9 arguments or can be used as the arguments' positions.
    $# specifies the total number (count) of arguments passed to the script.
    $* stores all the command line arguments by joining them together.
    $@ stores the list of arguments as an array.
    $? specifies the process ID of the current script.
    $$ specifies the exit status of the last command or the most recent execution process.
    $! shows ID of the last background job.
COMMENTS


#contoh penggunaan variable dengan menggunakan number position
echo $0 '> echo $0'
echo $1 $2 $3 '> echo $1 $2 $3'

#contoh penggunaan variable dengan menambahkan array
args=("$@")
echo ${args[0]}${args[1]}

#contoh penggunaan variabel dengan substitution

lsResult=$(ls)
echo "my file : "$lsResult

