#!/bin/bash

#latihan demo open port on Network

#1.menggunakan -4 sebagai argumnet untuk membatasi port di protocol tcp IPv4
#yang akan tampil pada program ini yaitu angka 4 nomer terakhir pada alamat network/jaringan yang ada diperangkat komputer/laptop kita

netstat -nutl ${1} | grep ':' | awk '{print $4}' | awk -F ':' '{print $NF}'

