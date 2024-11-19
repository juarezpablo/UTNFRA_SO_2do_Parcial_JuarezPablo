

#creo un nuuevo rol con el sig comando

ansible-galaxy role init nuevo_role


#una vez creado el el rol nuevo_role ingreso a su carpeta task y edito el archivo main.yml 
sudo vim main.yml

#agrego dentro del archivo la tarea que corresponde a la creacion de un directorio


- name: Crear directorio con mkdir
  ansible.builtin.command:
    cmd: mkdir -p mkdir -p /temp/2do_parcial/{alumno,equipo}

#luego me dirigo al archivo playbook.yml y lo edito

sudo vim playbook.yml

#agrego el codigo para importar un nuevo rol 

- name: "Import nuevo_role"
      import_role:
        name: nuevo_role
      tags:
        - nuevo_role

# ejecuto el playbook

sudo ansible-playbook -i inventory playbook.yml


























