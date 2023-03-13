#!/bin/bash


<<COMMENTS
ketika membuat sebuah perulangan tapi terjadi looping forever
maka bisa menghentikan secara paksa dengan menggunakan keyboard ctrl+c
COMMENTS

#contoh dasar perulangan for loop didalam bash shell scripting dengan menggunakan string
learn="contoh for loop"
for learn in $learn
do echo $learn
done
echo "thank you"

#contoh kedua for loop untuk membaca rentang nilai
for num in {0..10}
do
echo $num
done
echo "contoh perulangan rentang 1-10"

#contoh for loop untuk membaca rentang nilai dengan menambahkan iteration increment/decrement

#1.for loop increment
for number1 in {1..10..1} #artinya melakukan penambahan setiap kelipatan 1,angka 1 setelah 10 itu merupakan penambahkan pada nilai selanjutnya artinya i+1 atau i++

do
echo $number1
done


#2.for loop decrement
for number2 in {10..0..2} #artinya dimulai dari 10-0 dimana pengurangannya 2x artinya nilai selanjutnya akan dikurangi 2
do
echo $number2
done


#contoh for loop untuk membaca variable array
array=("element1","element 2","element 3")
for i in "$array{[@]}"
do
echo $i
done


#contoh for loop utk membaca spasi didalam string sebagai pemisah kata
str="contoh perulangan for"
for i in $str;
do echo "$i" 
done

#contoh for loop untuk membaca setiap baris didalam string sebagai kata/word
word="contoh membaca baris didalam string"
for i in "$word";
do 
echo "$i" #hasilnya akan berupa sebuah kalimat yang satu baris tidak tersusun kebawah
done

#contoh perulangan for untuk membaca tiga expresi didalamnya
for((j=1;j<=10;j++))
do
echo "$j"
done

#contoh perulangan for dengan menambahkan break statement
for table in {2..100..2}  
do  
echo $table  
if [ $table == 20 ]; then  
break  
fi  
done  

#contoh perulangan for dengan menambahkan continue statement
for((k=1;k<20;k++));
do
if [[ $k -gt 5 && $k -lt 16 ]];
then
continue
fi
echo $k
done
