#!/bin/bash

#Disco 2G /dev/sdc
#Disco 1G /dev/sdd

#Formateo de disco 2G y cambio el tipo a 8E (LVM) para luego hacer los grupos y volumenes logicos
sudo fdisk sdc
n
p



t
8E
w

#Formateo disco 1G y cambio a tipo 82(SWAP) 

sudo fdisk sdd
n
p



t
82
w

#Limpio las particiones antes de crear los grupos
sudo wipefs -a /dev/sdc1

#Primero se crean los volumenes fisicos
sudo pvcreate /dev/sdc1 /dev/sdd1

#Creacion de grupos 
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1

#Creacion de volumenes logicos que estaran dentro de los grupos

sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap

#Verifico la ruta donde se crearon para luego formatear los volumenes (Aclaracion: los volumenes pertenecientes a vg_datos se utiliza formato de tipo ext4, para swap se utiliza comando mkswap)
sudo fdisk -l
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap

#Creo el directo donde se montara el volumen lv_workareas(/work) 
sudo mkdir -p /work/

#Montaje de volumenes
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work
sudo swapon /dev/mapper/vg_temp-lv_swap

#Restarteo del servicio de docker, ya que un volumen esta montado y se tiene que generar la estructura de directorio

sudo systemctl restart docker
#verifico el estado de docker
sudo systemctl status docker




