# Clase 4 - Docker

### Ejercicio 3

## 3.- Crea un contenedor con las siguientes especificaciones:
	a. Utilizar la imagen base NGINX haciendo uso de la version nginx:alpine
	b. Al acceder a la URL localhost:8080/index.html aparecer el mensaje HOMEWORK 1
	c. Persistir el fichero index.html en un volumen llamado static_content

### Paso 1: Crear el fichero Dockerfile. Las instrucciones que se han utilizado para el fichero son:
```
	- Utilizar la imagen de nginx con la version requerida
	FROM nginx:alpine
	
	- Copiar el archivo index.htm de la carpeta src desde el host a la carpeta del contenedor
	COPY /src/index.html /usr/share/nginx/html
```	
### Paso 2: Crear un volumen 'static_content' en el CLI de Docker mediante la siguiente instruccion
	```docker volume create static_content ```
![image](https://user-images.githubusercontent.com/51717240/187045923-fe937c60-d65d-482b-b9b0-f7e4471f95f8.png)
	
### Paso 3: Construir la imagen del contenedor. El nombre de la imagen es 'bootcamp_nginx'
	```docker build -t bootcamp_nginx . ```
![image](https://user-images.githubusercontent.com/51717240/187045934-b2356a8d-6069-4fb1-ab74-d89bbccb5fd6.png)

	
### Paso 4: Crear el contenedor	con nombre 'bootcamp_container' utilizando la imagen construida en el paso 3
	- Mediante el parametro -v hacemos que el volumen 'static_content' creado en el paso 2 apunte al directorio del contenedor donde se encuentra el archivo index.html. De esta forma persistimos todo el contenido del directorio /usr/share/nginx/html del contenedor en el volumen

	```docker run -d --name bootcamp_container -v static_content:/usr/share/nginx/html -p 8080:80 bootcamp_nginx ```
![image](https://user-images.githubusercontent.com/51717240/187045942-af24c0c6-36af-4ae1-adbd-c32fc521b3de.png)


### Paso 5: Acceder a la URL http://localhost/8080/index.html y comprobar que aparece la pagina deseada
![image](https://user-images.githubusercontent.com/51717240/187045947-2858f304-c9fe-4c8b-92d2-66268cf3502f.png)

### Paso 6: Deploy to Registry DockerHub

- Recuerda que debes contar con una cuenta en https://hub.docker.com
- Logeate en docker-hub desde la terminal
- Ubicar el usuario de dockerhub, que con ese vas autheticarte
- Documentacion [Docker](https://docs.docker.com/engine/reference/commandline/login/)
```docker login````
```docker login -u "myusername" -p "mypassword" docker.io```
![image](https://user-images.githubusercontent.com/51717240/187045954-bb3b15a5-342a-4710-b43e-4fb9bbfc3a4a.png)

- tagear la imagen
```docker tag bootcamp_nginx roxsross12/bootcamp_nginx:v1.0.0 ```

![image](https://user-images.githubusercontent.com/51717240/187045963-ac44dc37-b650-46a5-b0c0-4a8987d0cc9b.png)


- Push en el registry
```docker push roxsross12/bootcamp_nginx:v1.0.0```
- Listo
![image](https://user-images.githubusercontent.com/51717240/187045972-c584966a-d711-43f9-8538-a5ce05e17031.png)

![image](https://user-images.githubusercontent.com/51717240/187045974-fde8e1e1-d062-40b6-80db-cf4be0803e12.png)


### Entregable:

- Armar una solucion.md y usando Markdown :

- Documentacion [Markdown](https://docs.github.com/es/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

- Crear Dockerfile

- Subir Registry DockerHub
