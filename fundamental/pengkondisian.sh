#!/bin/bash

#conditional if
name="fahrudin"
if [ "$name" = "fahrudin" ];
then
	echo "selamat datang $name"
fi

#conditional if else
nama="udin"
var=true
echo "masukan nama"
read nama
if [ "$nama"=="$var" ];
then
	echo "selamat datang $nama"
else
	echo "username yang dimasukan salah"
fi

