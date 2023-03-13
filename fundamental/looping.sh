#!bin/bash

#contoh implementasi looping dengan pemanggilan sebuah isi sebuah file
for name in $(cat ./contoh.txt);
do
echo "nama teman saya: $name"
done

