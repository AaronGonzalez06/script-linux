#!/bin/bash

con=0
while [ $con -eq 0 ]; do
clear
echo "a.- Ver servicios activos/running."
echo "b.- Ver servicios activos/exited."
echo "c.- Ver servicios inactivos."
echo "x.- Salir."
read letra

case $letra in
	"a")
		clear
		echo "servicios running:"
		echo "------------------"
		systemctl list-units -t service | grep running | sed 's/[[:space:]] //g'  | cut -d" " -f1
		read safassd
	;;
	"b")
		clear
		echo "servicios exited:"
		echo "------------------"
		systemctl list-units -t service | grep exited | sed 's/[[:space:]] //g'  | cut -d" " -f1
		read safassd
	;;
	"c")
		clear
		echo "servicios inactivos:"
		echo "------------------"
		systemctl list-units --all --state=inactive | grep loaded | sed 's/[[:space:]] //g'  | cut -d" " -f1 | sort
		read safassd
	;;	
	"x")
		clear
		con=1
		;;
	*)
	clear
	echo "opción incorrecta."
	read dfsgdsgsd
	;;
esac
done









