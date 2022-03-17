#!/bin/bash

##grep aaron /etc/group | cut -d ':' -f1

##ver los grupos a los que pertenece el usuario.
## cat /etc/group | grep aaron | cut -d ":" -f 1
##$1
##$2
##echo $1
##echo $2
##echo total de parametros $#
##echo $*

root=$(id -u)

case $root in
	0)
	enter=0;
	
	if [ $# == 1 ]; then
	
		while [ $enter -eq 0 ]; do
		clear
		echo "usuario a tratar: $1";
		echo "1) crear el usuario";
		echo "2) borrar";
		echo "3) copia de seguridad";
		echo "4) sus grupos.";
		echo -e "5) Salir.";
		read intro ;
		
			case $intro in
					1)
					num=$(grep $1 /etc/passwd | wc -l)
					if [ $num -eq 0 ]; then
					useradd -m $1 -p usuario -N
					if [ $? -eq 0 ];then
						clear
						echo -e "usuario $1 creado."
						read sadfafg
					else
						clear
						echo "problemas al crear al usuario $1"	
						read afgadfgasdfwf
					fi
					else
					clear
					echo "usuario $1 ya existe en el sistema"
					read sassdf
					fi
					
					;;
					2)
					userdel -rf $1 &> /dev/null
					if [ $? -eq 0 ];then
						clear
						echo -e "usuario $1 eliminado."
						read sadfafg
					else
						clear
						echo "problemas al eliminar al usuario $1"	
						read afgadfgasdfwf
					fi
						
					;;						
					3)
					;;					
					4)
					clear
					echo "grupos donde esta $1";
					cat /etc/group | grep $1 | cut -d ":" -f 1 | sed -e "s/$1/ /g" | sort | tr '\n' ' '
					read afasdfa
										
					;;							
					5)clear
					exit;
					
					;;					
					*)
					clear
					 echo -e "introduzca bien el numero"
					 read afgadfgasdf
					 
					;;	
			esac											
		
		done
	
	else
	echo "error con los parámetros.";
	fi
	
	;;
	*)
	echo "permiso denegado.";;
esac
clear
	
