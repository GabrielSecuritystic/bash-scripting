#!/bin/bash

#contoh aritmatika dengan simbol battick

<<COMMENTS
untuk bisa menggunakan operator aritmatika didalam output echo
maka bisa menggunakan battick/expr
COMMENTS
echo "a=10,b=3"
echo "nilai c hasil dari c=a+b"
a=10
b=3
echo "c=`expr $a+$b`"
