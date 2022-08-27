#!/bin/bash

echo "crear volumen 'static_content'"
docker volume create static_content
echo ""
echo "Listado de volumenes"
docker volume ls
echo ""

echo "Construimos imagen de contenedor"
docker build -t bootcamp_nginx .
echo ""

echo "Creamos contenedo 'bootcamp_container' con la imagen"
docker run -d --name bootcamp_container -v static_content:/usr/share/nginx/html -p 8080:80 bootcamp_nginx
echo ""

echo "listado de contenedores en ejecucion"
docker ps
echo ""

