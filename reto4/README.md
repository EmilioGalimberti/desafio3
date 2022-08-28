# Clase 4 - Docker

### Contenedores Docker 

### Ejercicio 1 - Crear imagen de `Apache`
Crea una imagen con un servidor web Apache y el mismo contenido que en la carpeta [content](https://raw.githubusercontent.com/roxsross/bootcamp-3-challenge/master/retos/sesion2/content).

Fíjate en el [Dockerfile](https://raw.githubusercontent.com/roxsross/bootcamp-3-challenge/master/reto4/Dockerfile) de abajo de ```simple-nginx```.

Usa docker build para crear la imagen llamada ```simple-apache:new```

1. Cambiar
![sesion 2, ejercicio 1](../assets/ses2-ejer1.png)
2. Buscar en ```Docker Hub``` la imagen de ```Apache```
3. Cambiar los valores para que:
   1. La imagen base sea este otro servidor
   2. El contenido se copie donde apache sirve los archivos.
![image](https://user-images.githubusercontent.com/51717240/187046790-18027872-fc65-4630-925c-c91c8135e735.png)

![image](https://user-images.githubusercontent.com/51717240/187046792-a4129716-daef-4b21-ba49-d21d9c5eb1c0.png)


### Ejercicio 2 - Crear contenedor desde la nueva imagen

Ejecutar tu nueva imagen
El contenedor se debe llamar ```my_apache```
Debes usar el puerto __5050__ de tu __localhost__ para poder acceder a él.
__Resultado:__
![sesion 2, ejercicio 2](../assets/ses2-ejer2.png)

![image](https://user-images.githubusercontent.com/51717240/187046797-fb1bfc33-a5e5-45be-aafa-162aae25e874.png)

### Ejercicio 3 - Inspeccionar la imagen

Averiguar cuántas capas tiene mi nueva imagen

![image](https://user-images.githubusercontent.com/51717240/187046819-cd7fd1a4-bdde-468f-b62e-9005fca457e8.png)
