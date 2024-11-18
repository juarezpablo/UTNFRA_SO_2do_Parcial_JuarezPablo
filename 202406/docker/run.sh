#!/bin/bash

#Corro la imagen generada 
docker run -d -p 8080:80 juarezpablo/web1-juarezpablo
 
docker ps

curl localhost:8080
