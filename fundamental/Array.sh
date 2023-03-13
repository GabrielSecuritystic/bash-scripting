#!/bin/bash

#contoh initialisasi sebuah array
#declarasi array
declare -a deklarasi_array=("contoh""deklarasi""sebuah""array")
echo ${deklarasi_array[0]} #menampilkan nilai arrray berdasarkan index->setiap index dipisahkan oleh sebuah spasi

#mencetak kunci pada sebuah array
declare -a cetak_array=("welcome" "pemalang")
echo "${!cetak_array[@]}" #mencetak array dengan menampilkan inde nilai

#menemukan panjang sebuah array
declare -a length_array=("contoh" "array")
echo "panjang array adalah ${#length_array[@]}" # tandan crash(#) untuk menampilkan panjang karakter

#menggunakan looping di sebuah array
declare -a loop_array=("belajar" "bash" "shell")
for i in "${!loop_array[@]}"
do
echo kunci dari element  "${loop_array[$i]}" adalah index ke "$i"
done


#menggunakan looping di sebuah array bagian 2
declare -a loop2_array=("looping" "array")
length=${#loop2_array[@]}
for((i=0;i<${length};i++))
do
echo $i ${loop2_array[$i]}
done


#contoh implementasi penambahan element didalam sebuah array
declare -a add_element=("contoh" "penambahan" "element")
add_element[3]="bash shell" #menambahkan sebuah nilai baru pada array didalam ururtan index ke 3
echo "${add_element[@]}"

#contoh implementasi penambahan element didalam sebuah array bagian dua
declare -a tambah_element=("penambahan" "element" "baru")
tambah_element+=(bash shell scripting) #menambahkan nilai array baru/element baru menggunakan operator assignment penambahan
echo "${tambah_element[@]}"

#contoh implementasi updae nilai/element sebuah Array
declare -a update_array=("contoh" "update" "nilai")
update_array[2]=element #mengupdate nilai pd index kedua yaitu="nilai" menjadi "element"
echo ${update_array[@]}


#contoh implementasi menghapus nilai/element pada sebuah array
declare -a delete_array=("mudah" "belajar" "coding")
unset delete_array[0] #unset merupakan perintah untuk menghapus sebuah element/melepaskan element berdasarkan index 
echo "${delete_array[@]}"


#contoh implementasi memotong bagian nilai sebuah array/slice nilai array
slice_array=( "php" "js" "bash" "python" "deep learning" )
slice_array=("${slice_array[@]:1:3}") #artinya pemotong element dilakukan sebelum index ke1 dan nilai setelah index ke3
for i in "${slice_array[@]}"
do
echo $i
done
