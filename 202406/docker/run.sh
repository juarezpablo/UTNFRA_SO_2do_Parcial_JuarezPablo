#!/bin/bash

#Corro la imagen generada 
docker run -d -p 8080:80 juarezpablo/web1-juarezpablo


echo 
echo "Entre en:  http://localhost:8080"
echo 
docker ps
