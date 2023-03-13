#!/bin/bash

#contoh penerapan inputan pengguna yang dapat dibaca
echo "Enter the user name: "  
read first_name  
echo "The Current User Name is $first_name"  
echo  
echo "Enter other users'names: "  
read name1 name2 name3  
echo "$name1, $name2, $name3 are the other users."

#contoh penerapan inputan ketika melewati/tanpa sebuah variable
echo "masukan nama "
read
echo "nama: $REPLY"

#cara2
#contoh penerapan read user input kedua(contoh1)
read -p "username:" user_var  
echo "The username is: " $user_var  

#comtoh pnerapan input pengguana ketiga

read -p "userna,e:" user_var
read -sp "password":" pass_err
echo
echo "username":$user_var
echo "passsowrd:" $passs)baru


username : " user_var  
read -sp "password : " pass_var  
echo  
echo "username : " $user_var  
echo "password : "  $pass_va


#contoh penerapan ke 4
echo "nama siapa: "
read -a names
echo "masukan data: ${name[0]},${names[1]}"
