#!/bin/bash

#Automatizacion de alta de usuarios y grupos obtenidos de un txt

#Obtengo el Parametro 1, que es el usuario del cual se obtendra la clave
echo "== Usuario del cual se obtendra la clave =="
read -p "Ingrese el usuario: " usuario_master_clave
echo "usuario origen $usuario_master_clave "

#Obtengo parametro 2, que esla ubicacion del archivo txt donde se obtendran los usuarios y grupos a crear

echo "== Ingreso ubicacion de lista.txt con usuarios y claves =="
read -p "Ingrese ruta: " lista
cat $lista




#ANT_IFS=$IFS
#IFS=$'\n'
for LINEA in `cat $lista |  grep -v ^#`
do
        nombre_usuario=$(echo  $LINEA |awk -F ',' '{print $1}')
        grupo_primario=$(echo  $LINEA |awk -F ',' '{print $2}')
        directorio_home=$(echo  $LINEA |awk -F ',' '{print $3}')
        echo "salida: user: $nombre_usuario  grupo: $grupo_primario directorio: $directorio_home"
done
#IFS=$ANT_IFS


