#!/usr/bin/bash
# Nse-nmap v1.1
# Author: _Y000!_
if [ "$(whereis nmap)" == "" ]; then
        echo -n -e "nmap será instalado... [y/N] "
        read -r yorn
        if [ "$yorn" == "y" ] || [ "$yorn" == "Y" ]; then
                apt install nmap
        elif [ "$yorn" == "n" ] || [ "$yorn" == "N" ]; then
                exit
        else
                apt install nmap
        fi
fi
clear
echo -e " --------------------------------------------------------------------------------"
echo
echo -e "  ______   _______          _________ _______         _______  _______  _______  "
echo -e " (  ___ \ (  ____ )|\     /|\__   __/(  ____ \       (       )(  ___  )(  ____ ) "
echo -e " | (   ) )| (    )|| )   ( |   ) (   | (    \/       | () () || (   ) || (    )| "
echo -e " | (__/ / | (____)|| |   | |   | |   | (__     _____ | || || || (___) || (____)| "
echo -e " |  __ (  |     __)| |   | |   | |   |  __)   (_____)| |(_)| ||  ___  ||  _____) "
echo -e " | (  \ \ | (\ (   | |   | |   | |   | (             | |   | || (   ) || (       "
echo -e " | )___) )| ) \ \__| (___) |   | |   | (____/\       | )   ( || )   ( || )       "
echo -e " |/ \___/ |/   \__/(_______)   )_(   (_______/       |/     \||/     \||/    	  "
echo                                             
echo -e "                             15-06-2020 | creado por: _Y000!_   "
echo
echo -e " Simple script para fuerza bruta en diferentes servicios"
echo -e "---------------------------------------------------------------------------------"
echo
echo -e " [01] Fuerza bruta a FTP"
echo -e " [02] Fuerza bruta a SSH"
echo -e " [03] Fuerza bruta a MYSQL"
echo -e " [04] Fuerza bruta a TELNET"
echo -e " [05] Fuerza bruta a VNC"
echo -e " [06] Fuerza bruta a HTTP"
echo -e " [07] Fuerza bruta a HTTP JOOMLA"
echo -e " [08] Fuerza bruta a HTTP WORDPRESS"
echo -e " [09] Acerca de mi"
echo -e " [0] Salir"
echo
echo -n -e "brute-map > "
read -r brute-map
if [ "$brute-map" == "01" ] || [ "$brute-map" == "1" ];
	
		if [ "$brute-map" == "01" ] || [ "$brute-map" == "1" ];
		then
		echo
		echo -n -e "Escribe la IP o la pagina: "
		read -r iphostname
		echo
		nmap --script ftp-brute -p 21  "$iphostname"
		read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
		bash "$0"

		elif [ "$brute-map" == "02" ] || [ "$brute-map" == "2" ];
		then
		echo
		echo -n -e "Escribe la IP o la pagina: "
		read -r iphostname
		echo
		nmap --script ssh-brute -p 22,8022  "$iphostname"
		read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
		bash "$0"

		elif [ "$brute-map" == "03" ] || [ "$brute-map" == "3" ];
		then
		echo
		echo -n -e "Escribe la IP o la pagina: "
		read -r iphostname
		echo
		nmap --script mysql-brute,mysql-enum -p 3306  "$iphostname"
		read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
		bash "$0"

		elif [ "$brute-map" == "04" ] || [ "$brute-map" == "4" ];
		then
		echo
		echo -n -e "Escribe la IP o la pagina: "
		read -r iphostname
		echo
		nmap --script telnet-brute -p 23  "$iphostname"
		read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
		bash "$0"

		elif [ "$brute-map" == "05" ] || [ "$brute-map" == "5" ];
		then
		echo
		echo -n -e "Escribe la IP o la pagina: "
		read -r iphostname
		echo
		nmap --script vnc-brute  "$iphostname"
		read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
		bash "$0"

		elif [ "$brute-map" == "06" ] || [ "$brute-map" == "6" ];
		then
		echo
		echo -n -e "Escribe la IP o la pagina: "
		read -r iphostname
		echo
		nmap --script http-brute -p 80,443  "$iphostname"
		read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
		bash "$0"

		elif [ "$brute-map" == "07" ] || [ "$brute-map" == "7" ];
		then
		echo
		echo -n -e "Escribe la IP o la pagina: "
		read -r iphostname
		echo
		nmap --script http-joomla-brute -p 80,443  "$iphostname"
		read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
		bash "$0"
		elif [ "$brute-map" == "00" ] || [ "$brute-map" == "0" ];
		then
		echo -e "\033[1;31m[!] Atras..\033[1;0m"
		bash "$0"

		elif [ "$brute-map" == "08" ] || [ "$brute-map" == "8" ];
		then
		echo
		echo -n -e "Escribe la IP o la pagina: "
		read -r iphostname
		echo
		nmap --script http-wordpress-brute -p 80,443  "$iphostname"
		read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
		bash "$0"
		else
		echo
		echo -e "\033[1;31m[!] Elegiste mal...\033[1;0m"
		sleep 1
		bash "$0"
		fi


elif [ "$brute-map" == "09" ] || [ "$brute-map" == "9" ];
then
echo
echo -e "\033[1;31m[!] Creado por _Y000!_... \033[1;0m"
sleep 10
bash "$0"
elif [ "$brute-map" == "00" ] || [ "$brute-map" == "0" ];
then
exit
fi
