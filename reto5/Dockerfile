#Imagen a utilizar como base
FROM node:lts-alpine3.16

#Etiquetado
LABEL maintainer="emiliogalimberty@gmail.com"
LABEL projet="bootcamp"

#directorio de trabajo
WORKDIR /usr/src/app

#hace una copya de la carpeta hello-bootcamp y hace referncia al directorio de trabajo
COPY ./hello-bootcamp .

#al usar Node.js, debemos indicar que instale todas las dependecias
RUN npm install


#inice el server
CMD [ "npm" , "start"]
