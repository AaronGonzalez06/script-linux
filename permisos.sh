#!/bin/bash
propietario=$(ls -l $1  2> /dev/null | cut -d" " -f 3)
grupo=$(ls -l $1 2> /dev/null | cut -d" " -f 4)
proR=$(ls -l $1 2> /dev/null | cut -d" " -f1 | tr '-' 'N' | sed -r 's/\B/ /g' | cut -d" " -f 2)
proW=$(ls -l $1 2> /dev/null | cut -d" " -f1 | tr '-' 'N' | sed -r 's/\B/ /g' | cut -d" " -f 3)
proX=$(ls -l $1 2> /dev/null | cut -d" " -f1 | tr '-' 'N' | sed -r 's/\B/ /g' | cut -d" " -f 4)
gruR=$(ls -l $1 2> /dev/null | cut -d" " -f1 | tr '-' 'N' | sed -r 's/\B/ /g' | cut -d" " -f 5)
gruW=$(ls -l $1 2> /dev/null | cut -d" " -f1 | tr '-' 'N' | sed -r 's/\B/ /g' | cut -d" " -f 6)
gruX=$(ls -l $1 2> /dev/null | cut -d" " -f1 | tr '-' 'N' | sed -r 's/\B/ /g' | cut -d" " -f 7)
resR=$(ls -l $1 2> /dev/null | cut -d" " -f1 | tr '-' 'N' | sed -r 's/\B/ /g' | cut -d" " -f 8)
resW=$(ls -l $1 2> /dev/null | cut -d" " -f1 | tr '-' 'N' | sed -r 's/\B/ /g' | cut -d" " -f 9)
resX=$(ls -l $1 2> /dev/null | cut -d" " -f1 | tr '-' 'N' | sed -r 's/\B/ /g' | cut -d" " -f 10)

	
if [ $# == 1 ]; then


	if [ -d $1 ]; then
		clear
		echo "introduzca un archivo para poder analizarlo"

	else

		clear
		echo "archivo: $1"
		echo "--------"
		echo "propietario: $propietario"
		echo "--------"
		echo "grupo: $grupo"
		echo "--------"
		echo "permiso para el propietario:"
		echo "--------"
		
		
		if [ "$proR" = "r" ]; then
		echo "Permiso de lectura.";
		fi
		if [ "$proW" = "w" ]; then
		echo "Permiso de escritura.";
		fi
		if [ "$proX" = "x" ]; then
		echo "Permiso de ejecución.";
		fi
		echo "--------"
		echo "permiso para el grupo:"
		echo "--------"
		if [ "$gruR" = "r" ]; then
		echo "Permiso de lectura.";
		fi
		if [ "$gruW" = "w" ]; then
		echo "Permiso de escritura.";
		fi
		if [ "$gruX" = "x" ]; then
		echo "Permiso de ejecución.";
		fi
		echo "--------"
		echo "permiso para el resto de usuarios:"
		echo "--------"
		if [ "$resR" = "r" ]; then
		echo "Permiso de lectura.";
		fi
		if [ "$resW" = "w" ]; then
		echo "Permiso de escritura.";
		fi
		if [ "$resX" = "x" ]; then
		echo "Permiso de ejecución.";
		fi
	fi

else
echo "introduzca el archivo."
fi






















