#!/bin/bash


#creo un directorio donde se va a guardar la pagina html
mkdir html

#creo y modifico el archivo index.html con lo que se va mostrar en la pagina
cd html/
sudo vim html.index

<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Noviembre 2024 </h2> </br>
<h3> Nombre: Juan Pablo  Apellido: Juarez</h3>
<h3> División: 311</h3>
</div>

#dentro de la carpeta docker creo el archivo dockerfile y edito con el sig codigo
sudo vim dockerfile
FROM nginx
COPY html /usr/share/nginx/html

#logueo a docker con mi usuario y contrasena creada en el hub de docker
(Aclaracion: No se puede agregar en este archivo los token de docker,ya que github no lo permite por una regla de seguridad)

#creo mi propia imagen
docker build -t juarezpablo/web1-juarezpablo:latest .

#compruebo que la imagen este creada
docker image list
#subo la imagen a docker
docker push juarezpablo/web1-juarezpablo
