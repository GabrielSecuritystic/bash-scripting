#!/bin/bash

#contoh perulangan untilLoop dengan menggunakan single condition

i=0
until [ $i -gt 10 ]
do
echo $i
((i++))
done

#contoh perulangan untilLoop dengan menggunakan multiple condition
max=5
a=1
b=0

until [[ $a -gt $max || $b -gt $max ]];
do 
echo "a = $a & b =$b"
((a++))
((b++))
done
