#!/bin/bash

#construimos la imagen

docker build -t hello-bootcamp .

echo ""

echo "Listado de imagenes"
docker images
echo""

#dockerizamos la app

#ejectuamos contenedor con la imagen
echo "creamos contenedor"
#en server.js escuha el puerto 4000
docker run --name hello -d -p 4000:4000 hello-bootcamp:latest

echo""
echo "listado de contenedroes activos"
docker ps

#subimos al registry
echo ""
echo "Creamos tag"
docker tag hello-bootcamp emiliogalimberti/reto05docker:latest

echo "hacemos un push"
sudo docker push emiliogalimerti/reto05docker:latest
