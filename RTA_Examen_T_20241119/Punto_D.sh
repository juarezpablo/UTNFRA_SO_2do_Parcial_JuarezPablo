#Para agregarle tareas a role de ansible 
#Primero dentro de la carpeta tasks editar el archivo main.yml
sudo vim main.yml

#Agrego la tarea de creacion de directorios


---
- name: Crear directorio con mkdir
  ansible.builtin.command:
    cmd: mkdir -p /tmp/2do_parcial/{alumno,equipo}

