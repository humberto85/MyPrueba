#!/bin/bash
#-*- coding: utf-8 -*-

echo "Que quieres hacer? $(whoami) :D "
echo "1) sudo apt update          6) sudo apt-get update&&sudo apt-get upgrade -y"
echo "2) sudo apt upgrade"
echo "3) Reiniciar"
echo "4) Version de Linux"
echo "5) IP"
echo "-) Apagar equipo"
echo "0) Salir del script"

read x
  case $x in
     1)
	clear
        echo "Checando actualizaciones"
	sudo apt update
     ;;
     2)
	clear
        echo "Actualizando"
	sudo apt upgrade
     ;;
     3)
	clear
	echo "Reiniciando Sistema"
	reboot
     ;;
     4)
	clear
	echo "Version de Linux:"
	cat /etc/*release
	echo "Distribucion de Linux:"
	lsb_release -d
     ;;
     5)
	clear
	echo "IP del Equipo:"
	hostname -I
	echo "Ip Publica"
	curl ifconfig.me
     ;;
     6)
	clear
	echo "Actualizando equipo"
	sudo apt-get update&&sudo apt-get upgrade -y
     ;;
     -)
	clear
	echo "Apagando el equipo..."
	shutdown now 'Se apagara el equipo ahora'
     ;;
     0)
	clear
	echo "Saliendo del script '$0' " # $0 Llama el nombre del archivo
	sleep 1
	exit
  esac

#sudo apt update
#echo "Comando ejecutado -$(date)"

