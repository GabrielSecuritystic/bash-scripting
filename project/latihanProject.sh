#!/bin/bash
echo "
  ____________________   _____ __________    _____ __________    _____    _______    ________
 /   _____/\_   _____/  /     \\______   \  /  _  \\______   \  /  _  \   \      \  /  _____/
 \_____  \  |    __)_  /  \ /  \|    |  _/ /  /_\  \|       _/ /  /_\  \  /   |   \/   \  ___
 /        \ |        \/    Y    \    |   \/    |    \    |   \/    |    \/    |    \    \_\  \
/_______  //_______  /\____|__  /______  /\____|__  /____|_  /\____|__  /\____|__  /\______  /
        \/         \/         \/       \/         \/       \/         \/         \/        \/
___________________   ________  .____       _________           ____
\__    ___/\_____  \  \_____  \ |    |     /   _____/  ___  __ /_   |
  |    |    /   |   \  /   |   \|    |     \_____  \   \  \/ /  |   |
  |    |   /    |    \/    |    \    |___  /        \   \   /   |   |
  |____|   \_______  /\_______  /_______ \/_______  /    \_/    |___|
                   \/         \/        \/        \/

                   Dibuat oleh codename: ./Rey~"

while :
do 
	clear
	break="==============================+++++++++++++++++==============================="
	echo $break
	echo "

  ____________________   _____ __________    _____ __________    _____    _______    ________ 
 /   _____/\_   _____/  /     \\______   \  /  _  \\______   \  /  _  \   \      \  /  _____/ 
 \_____  \  |    __)_  /  \ /  \|    |  _/ /  /_\  \|       _/ /  /_\  \  /   |   \/   \  ___ 
 /        \ |        \/    Y    \    |   \/    |    \    |   \/    |    \/    |    \    \_\  \
/_______  //_______  /\____|__  /______  /\____|__  /____|_  /\____|__  /\____|__  /\______  /
        \/         \/         \/       \/         \/       \/         \/         \/        \/ 
___________________   ________  .____       _________           ____                          
\__    ___/\_____  \  \_____  \ |    |     /   _____/  ___  __ /_   |                         
  |    |    /   |   \  /   |   \|    |     \_____  \   \  \/ /  |   |                         
  |    |   /    |    \/    |    \    |___  /        \   \   /   |   |                         
  |____|   \_______  /\_______  /_______ \/_______  /    \_/    |___|                         
                   \/         \/        \/        \/                                          

                       DIbuat oleh COdename: ./Rey~"
        echo $break
	echo
	echo "Menu:"
	echo "1.Encrypt Password"
	echo "2. Decrypt Password"
	echo "3.NMAP Scanning"
	echo "4.Vulnerability Scanning"
	echo "5.Social Enginnering"
	echo "6.About me"
	echo "7.Quit"
	read -p "masukan pilihan" usr_cmd
	clear

	case $usr_cmd in

		1) echo "menu Encrypt Password"
			read -p "masukan password:" pw
			echo "password berhasil dibuat"
			clear
			echo "$pw" |openssl enc -aes-256-cbc -a -salt -pbkdf2 >>password.txt
		;;

		2) echo "menu Decrypt Password"
			read -p "masukan password yang akan di Decrypt:" pw_decrypt
		echo "$pw_decrypt" | openssl enc -aes-256-cbc -d -a -pbkdf2 ;;

		3) echo "Menu NMAP Scanning"
			echo
echo
echo -n "masukan alamat IP address atau domain wesbtie yang akan di Scan:"
read dns
echo -n "masukan Port number yang akan di scan:"
read portNumber
echo "Port Scanning dimulai"
read -p "tekan enter untuk melanjutkan Scanning"
nmap -sS -p $portNumber $dns
echo "Scanning telah selesai"
;;

4)
	echo
echo "masukan IP address atau domain website untuk di Scan:"
read DNS
echo "Scanning dimulai:$DNS"
read -p "tekan enter untuk melanjutkan"
nikto -h $DNS
echo "Scanning Vulnreability telah Selesai"
;;

5)
	echo
	read -p "tekan enter untuk melakukan social engineering"
	echo
	setoolkit
;;

6)
break="==============================+++++++++++++++++==============================="
echo $break
echo "Tools ini dibuat hanya untuk latihan belajar bahasa pemrograman bash shell scripting"
echo "Identitas pembuat tools ini:"
echo "Codename: ./Rey~"
echo "++++++++++++++++++++++ ©copyright 2022 +++++++++++++++++++++++++++++"
echo
echo
echo $break
;;

7)
	break;;

*)
	echo "pilihan menu tidak ada"
	;;
	esac;
read -p "tekan angka 7 untuk menu quit/keluar,selain itu masuk menu utama" confirm_exit
if [ $confirm_exit -eq 7 ]
then break
fi
done

