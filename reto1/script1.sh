#!/bin/bash

#Inicar el contenedor
echo "Creacion de contenedor 'servidor_web'"
docker run -d --name servidor_web -p 8181:80 nginx
echo ""

#Listado de contenedores en ejecucion
echo "Listado conenedores en ejecucion"
docker ps
echo ""

#listado de todas las imagenes
echo "Listado de imagenes"
docker images
echo ""

echo "Stop server"
docker stop servidor_web
echo ""

echo "Listado de contenedores en ejecucion"
docker ps
echo ""

#Eliminacion de contenedor
echo "Eliminacion de contenedor 'servidor_web'"
docker rm servidor_web
echo""

echo "Listado de"
docker ps -a
echo""
