#!/bin/bash
echo "BELAJAR MEMBUAT APLIKASI AUTOMATION DENGAN BASH SHELL SCRIPTING"

<<COMMENTS
#Varible System
echo "MENAMPILKAN INFORMASI SEBUAH SISTEM OPERASI"
echo $BASH
echo $BASH_VERSION
echo $PWD

#User variable
echo -n "masukan nama kamu:" 
read name
echo "siapa saya $name"
COMMENTS


#bagian ke1. membuat ping scanner
echo
echo 
break="===========================+++++++++======================="
echo $break
echo "     Ping Scanner DECODE By ./Rey~     "
echo $break
echo
echo -n "Masukan alamat IP Address/Domain yang akan di PING Connection:"
read test
echo -n "Masukan berapa banyak request packet ping yang diinginkan:"
read paket
ping -c $paket $test #perintah -c4 artinya mengirimkan request ping connection sebanyak 4x,Sedangkan perintah -c sendiri bisa kita tambahkan nilai sendiri misal -c4

echo $break
echo "TEST CONNECTION PING SELESAI"
echo $break


#bagian ke.2 RECONN Target

echo -n "Masukan lokasi data file.txt:"
read location
#check null response
#perintah -z digunakan untuk memeriksa panjang karakter string jika panjangnya nol/empty,artinya file tersebut tidak ditemukan
if [ -z $location ];
then
echo 
echo "kamu tidak dapat memasukan location filenya"
exit
fi
echo "kamu bisa memasukan lokasi filenya:$location"
#bagian ke.2.1 memerika sebuah file/direktori
#perintah tambahan -f digunakan untuk mengecek apakah file yg dipanggil itu sudah ada atau belum
if [ ! -f $location ];then
echo
	echo "file tidak ditemukan"
	exit
fi
echo "file sudah tersedia"
#bagian ke 2.2 membaca isi sebuah file yang akan di PING connection
for i in $(cat $location);do
	ping -c4 $i
	echo "test connection ping untuk $i"
done

#bagian ke3.membuat bagian dns reconn
echo
echo $break
echo "Scanning DNS Reconn"
echo $break
echo -n "masukan alamat IP Domain website Target:"
read dns
#memeriksa apakah responsenya null/kosong atau ada feedback
if [ -z $dns ];then
	echo
	echo "alamat domain yang anda masukan salah"
	exit
fi
echo "mulai melakukan Reconn pada target $dns"
read -p "tekan <enter> untuk melanjutkan"
firefox &
sleep 4
firefox -new-tab https://website.informer.com/$dns
sleep 5
firefox -new-tab https://intodns.com/$dns

#bagian ke.4 membuat port scanning website target
echo 
echo $break
echo "Port Scanning website Target"
echo $break
echo -n "masukan alamat IP address atau domain website yang akan di Scan:"
read dns2
echo -n "masukan port number yang akan di Scan:"
read portnumber
echo $break
echo "Port Scanning dimulai"
echo $break
read -p "tekan enter untuk melanjutkan Scanning"
echo $break
nmap -sS -p $portnumber $dns2
echo $break
echo "Scanning telah selesai"
echo $break

#membuat vulnerability scanner dan social Engineering
echo 
echo -n "masukan IP Address website atau Domain website untuk di Scan:"
read dns3
echo "Scanning mulai:$dns3"
read -p "tekan enter untuk melanjutkan"
nikto -h $dns3
echo $break
echo "Scanning VUlnreability Selesai"
echo $break
read -p "tekan enter untuk melanjutkan SOcial ENggineering"
echo
setoolkit



#ping www.google.com #untuk mengganti request ping ke website lain,bisa gunakan perintah ping -c3 www.target.com


