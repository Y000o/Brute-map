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
echo -n -e "brutemap > "
read -r brutemap
if [ "$brutemap" == "01" ] || [ "$brutemap" == "1" ];
	then	
	echo	
	echo -n -e "Escribe la IP o la pagina: "
	read -r iphostname
	echo
	nmap --script ftp-brute -p 21  "$iphostname"
	read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
	bash "$0"

	elif [ "$brutemap" == "02" ] || [ "$brutemap" == "2" ];
	then
	echo
	echo -n -e "Escribe la IP o la pagina: "
	read -r iphostname
	echo
	nmap --script ssh-brute -p 22,8022  "$iphostname"
	read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
	bash "$0"

	elif [ "$brutemap" == "03" ] || [ "$brutemap" == "3" ];
	then
	echo
	echo -n -e "Escribe la IP o la pagina: "
	read -r iphostname
	echo
	nmap --script mysql-brute,mysql-enum -p 3306  "$iphostname"
	read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
	bash "$0"

	elif [ "$brutemap" == "04" ] || [ "$brutemap" == "4" ];
	then
	echo
	echo -n -e "Escribe la IP o la pagina: "
	read -r iphostname
	echo
	nmap --script telnet-brute -p 23  "$iphostname"
	read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
	bash "$0"

	elif [ "$brutemap" == "05" ] || [ "$brutemap" == "5" ];
	then
	echo
	echo -n -e "Escribe la IP o la pagina: "
	read -r iphostname
	echo
	nmap --script vnc-brute  "$iphostname"
	read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
	bash "$0"

	elif [ "$brutemap" == "06" ] || [ "$brutemap" == "6" ];
	then
	echo
	echo -n -e "Escribe la IP o la pagina: "
	read -r iphostname
	echo
	nmap --script http-brute -p 80,443  "$iphostname"
	read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
	bash "$0"

	elif [ "$brutemap" == "07" ] || [ "$brutemap" == "7" ];
	then
	echo
	echo -n -e "Escribe la IP o la pagina: "
	echo
	nmap --script http-joomla-brute -p 80,443  "$iphostname"
	read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
	bash "$0"
	
	elif [ "$brutemap" == "08" ] || [ "$brutemap" == "8" ];
	then
	echo
	echo -n -e "Escribe la IP o la pagina: "
	read -r iphostname
	echo
	nmap --script http-wordpress-brute -p 80,443  "$iphostname"
	read -rsp $'Presiona alguna tecla para continuar ...\n' -n 1 key
	bash "$0"

	elif [ "$brutemap" == "09" ] || [ "$brutemap" == "9" ];
	then
	echo -e "\033[1;31m[!] Creado por _Y000!_... \033[1;0m"
	sleep 10
	bash "$0"

        elif [ "$brutemap" == "00" ] || [ "$brutemap" == "0" ];
	then
	exit
	fi
