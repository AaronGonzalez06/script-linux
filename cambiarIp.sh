#!/bin/bash

search=$(ping -c 1 $1 &> /dev/null) 

if [ $* -q 1  ]; then


	if [ $# -eq 1 ]; then

		echo "ip $1 ocupada"

	else
		echo ""  > /etc/netplan/01-network-manager-all.yaml
		echo "network:" >> /etc/netplan/01-network-manager-all.yaml
		echo "  ethernets:" >> /etc/netplan/01-network-manager-all.yaml 
		echo "    enp0s3:" >> /etc/netplan/01-network-manager-all.yaml 
		echo "      dhcp4: no" >> /etc/netplan/01-network-manager-all.yaml 
		echo "      addresses: [$1/24]" >> /etc/netplan/01-network-manager-all.yaml 
		echo "      gateway4: 192.168.1.1" >> /etc/netplan/01-network-manager-all.yaml 
		echo "      nameservers:" >> /etc/netplan/01-network-manager-all.yaml 
		echo "        addresses: [8.8.8.8,8.8.4.4]" >> /etc/netplan/01-network-manager-all.yaml 
		echo "  version: 2" >> /etc/netplan/01-network-manager-all.yaml 
		netplan apply &> /dev/null 

	case $? in
		0)
			echo -e "nueva IP: $1"
			read adasfgdf
		;;
		1)
			echo -e "ocurrio algo al cambiar la IP"
			read adasfgdf
			;;
		*)
			echo -e "ocurrio algo al cambiar la IP"
			read adasfgdf
		;;
	esac
	fi




else
	clear
	echo "introducza IP para entrar en el programa."
	read asgdsf
fi


clear
