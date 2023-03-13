#!/bin/bash

echo "Tools Encrypt dan Decrypt"
echo "masukan pilihan yang akan dilakukan"

choice="Encrypt Decrypt"

select option in $choice; do
	if [ $REPLY = 1 ];
	then
		echo "kamu memilih opsi Enrypt"
		echo "masukan nama file"
		read file;
		gpg -c $file
		echo "encrypt telah berhasil"

	else
		echo "kamu memilih opsi Decrypt"
		echo "masukan nama file"
		read file2;
		gpg -d $file2
		echo "Decrypt telah berhasil"
	fi
done

