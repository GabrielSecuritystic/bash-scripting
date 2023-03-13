#!/bin/bash
echo "Contoh pembuatan directory Phone"
echo "Decode by ./Rey~"
echo "Menu:"
while :
do
	clear
echo "1.Tambah contact"
echo "2.Cari contact"
echo "3.Hapus contact"
echo "4.Lihat daftar contact"
echo "5.quit"
read -p "masukan pilihan:" usr_cmd
clear

case $usr_cmd in
	1)echo "tambahkan kontak"
		read -p "masukan nama:" name
		read -p "masukan nomer:" number
		echo "kontak berhasil ditambahkan"
		clear
		echo "informasi kontak:"
		echo "->Name: $name, ->nomer: $number"
		echo "$name : $number" >> phonedir.log #ini akan menyimpan data setelah dimasukan kedalam file phonedir.log
		echo "kontak berhasil disimpan";;
	2)echo "pencarian kontak"
		read -p "masukan nama kontak:" search_query 
		clear
		echo "hasil pencarian kontak:"
		grep -i $search_query phonedir.log #mengambil informasi pada file phonedir.log 
		;;
	3)echo "Hapus Contact"
		read -p "masukan kontak yang akan dihapus(harus benar):" delete_string
		sed -i -e "/$delete_string/d" phonedir.log #menggunakan perintah sad untuk melakukan tugas umum dan juga transformasi teks dasar pada inputan yang mana mengambil data dari file phonedir.log
		echo "hapus kontak berhasil"
		;;
	4)echo "Daftar Contact"
		echo ""
		cat phonedir.log #menggunakan perintah cat untuk membuat daftar isi pada standard inputan yang mana pada contoh ini mengambil daftar isi pada file phonedir.log 
		;;
	5)break;;
	*)echo "pilihan salah";;
esac;
read -p "tekan 5 untuk keluar,selain itu masuk ke daftar menu" confirm_exit
if [ $confirm_exit -eq 5]
then break
fi
done

