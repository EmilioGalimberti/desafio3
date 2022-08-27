#!/bin/bash

docker build -t simple-apache:new .


echo ""

docker images

echo ""
echo "creamos contenedor "

docker run -d --name my_apache -p 5050:80 simple-apache:new

echo
echo "listamos"
docker ps -a 
