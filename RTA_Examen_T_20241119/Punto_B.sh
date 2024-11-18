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



#Recorro el archivo txt con un for, en cada iteracion obtengo un usuario con su grupo correspondiente y directorio home

for LINEA in `cat $lista |  grep -v ^#`
do
        nombre_usuario=$(echo  $LINEA |awk -F ',' '{print $1}')
        grupo_primario=$(echo  $LINEA |awk -F ',' '{print $2}')
        directorio_home=$(echo  $LINEA |awk -F ',' '{print $3}')
        echo "salida: user: $nombre_usuario  grupo: $grupo_primario directorio: $directorio_home"
done

#Como estoy dentro de un for, primero creo el grupo, luego el usuario con su directorio obtenido de la lista y con la misma password obtenida del user pasado por parametro

	sudo groupadd $grupo_primario
        sudo useradd -m -d $directorio_home -s /bin/bash -c "" -p "$(sudo grep $usuario_master_clave /etc/shadow | awk-F ':' '{print $2}')" $nombre_usuario -G $grupo_primario $nombre_usuario


