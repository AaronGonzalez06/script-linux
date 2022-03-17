#!/bin/bash

##saca el directorio que mas ocupa 
##du -h * | sort -rn | head -n 1
## espacio total del directorio
##du -sh 
##saca los archivos del directorio
##du -h * | grep -lE '[a-z]*' *.*
##directorio nombre
##du -sh /home | rev | cut -d "/" -f1 |rev
##directorios de un directorio
## find /home/aaron -maxdepth 1  -type d | rev | cut -d"/" -f1 | rev
## find /home/aaron -maxdepth 1  -type f | rev | cut -d"/" -f1 | rev
clear

if [ $# -eq 1 ]; then

	if [ -d $1 ]; then
	
		ruta=$1
		rutaCompleta="${ruta}/*"
		tamano=$(du -sh $1)
		nombre=$(du -sh $1 | rev | cut -d "/" -f1 |rev)
		masOcupa=$(du -h $1 | sort -rh | head -n 2 | tail -n 1)
		archivos=$(du -h $rutaCompleta )
		fichero=$(find $ruta -maxdepth 1  -type f | rev | cut -d"/" -f1 | rev)
		directorio=$(find $ruta -maxdepth 1  -type d | rev | cut -d"/" -f1 | rev | tail -n +2)
		
		echo "directorio: $nombre --> Tamaño: $tamano  "
		echo "------------------------------------------"
		echo "su directorio que mas ocupa es: $masOcupa"
		echo "------------------------------------------"
		echo "archivos dentro de $nombre:"
		for x in $fichero; do
			ruta3="$ruta/$x"
			du -sh $ruta3
		done
		echo "------------------------------------------"
		echo "directorios dentro de $nombre:"
		for y in $directorio; do
			ruta2="$ruta/$y"
			du -sh $ruta2
		done


	else

	echo "añada un directorio para que se ejecute el programa."

fi

else

	echo "añade ruta para que se ejecute el programa."

fi





























































