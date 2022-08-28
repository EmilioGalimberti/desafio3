# Clase 4 - Docker

## Ejercicio - Inicial 

Crear un contenedor a partir de la imagen nginx , el contenedor se debe llamar servidor_web y se debe acceder a él utilizando el puerto 8181 del ordenador donde
tengas instalado docker.

`$ docker run -d --name servidor_web -p 8181:80 nginx `

`$ docker ps`

`$ docker images`

`$ docker stop servidor_web`

`$ docker ps`

`$ docker rm servidor_web`

`$ docker ps -a`

1. Pantallazo donde se vea la creación del contenedor y podamos comprobar que el contenedor está funcionando.
![image](https://user-images.githubusercontent.com/51717240/187041974-ccf63dcd-b73f-4037-8f40-e479d801f2a6.png)

2. Pantallazo donde se vea el acceso al servidor web utilizando un navegador web (recuerda que tienes que acceder a la ip del ordenador donde tengas instalado
docker)
![image](https://user-images.githubusercontent.com/51717240/187042000-b1977520-175d-4614-afc5-077b52daa2b5.png)

3. Pantallazo donde se vean las imágenes que tienes en tu registro local.
![image](https://user-images.githubusercontent.com/51717240/187042008-84af8509-f144-4983-bbec-56a537f2625e.png)

4. Pantallazo donde se vea cómo se elimina el contenedor (recuerda que antes debe
estar parado el contenedor).
![image](https://user-images.githubusercontent.com/51717240/187042027-c7e8758a-65e6-4943-af15-11545e406cc7.png)

### Entregable:

- Armar un script en Bash con todos los pasos para crear el contenedor

- Armar una solucion.md y usando Markdown y agregar las images de la solución:

- Documentacion [Markdown](https://docs.github.com/es/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
