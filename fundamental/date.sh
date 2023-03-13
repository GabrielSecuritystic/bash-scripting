#!/bin/bash

#contoh1  penerapn date pertama
d=`date +%d-%m-%Y`
echo "format tangagal latihan pertama"
echo $d #YYYY-MM-DD

#contoh penerapan tanggalan kedua

tgl=`date +%m-%Y`
echo "contoh peerapan tanggal kedua"
echo $tgl #MM-YYYY

#contoh penerapan tanggaan ketiga

tglnom=`date '+%A %d-%B, %Y'`  
  
echo "Date in format Weekday DD-Month, YYYY"  
echo $tglnom # Weekday DD-Month, YYYY  
