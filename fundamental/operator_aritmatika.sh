#!/bin/bash

x=8
y=2
<<COMMENTS
syntax penulisan operator aritmatika didalam bahasa bash
((expression))
COMMENTS

echo "x=8,y=2"
echo "contoh operasi penambahan"
echo $(($x+$y))
echo "contoh operasi pengurangan"
echo $(($x-$y))
echo "contoh operasi multiplication/perkalian"
echo $(($x-$y))
echo "contoh operasi division/pembagian"
echo $(($x/$y))
echo "contoh operasi exponent/perpangkatan"
echo $(($x**$y))
echo "contoh operasi modulus/sisa hasil bagi"
echo $(($x%$y))
echo "operasi increment atau +="
((x+=5))
echo $x
echo "operasi decrement atau -="
((x-=5))
echo $x
echo "operasi multiply"
((x*=5))
echo $x
echo "operasi pembagian/pemisahan/dividing"
((x/=5))
echo $x
echo "sisa pembagian"
((x%=5))
echo $x

