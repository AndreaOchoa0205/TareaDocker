# TareaDocker

Este proyecto contiene una sencilla aplicación hecha en Node.js la cual ejecutamos dentro de un contenedor en Docker. Usa el user no root llamada Andrea, tiene un volumen montado que se usara para escribir un archivo y luego se expondra en un puerto que nos permitira ver el mensaje "Esto es una prueba de mi tarea" en el navegador.

NOTA: se versiona carpeta volumen ya que al probar el proyecto se genera. Al final esta carpeta se generara cuando se monte el proyecto

# Requisitos
* Tener Docker instalado
* Tener git instalado

# ¿Como ejecutamos este proyecto?
1. Clonamos el repositorio
   
   git clone https://github.com/AndreaOchoa0205/TareaDocker.git

3. Contruimos y levantamos el contenedor con Docker Compose

      docker compose up --build

4. Una vez hagamos el paso 2, abrimos nuestro navegador en:

   http://localhost:3000

   Como resultado deberás de ver lo siguiente:

   
   <img width="335" height="122" alt="image" src="https://github.com/user-attachments/assets/647cacdb-a27f-4e45-8686-f1765f52a4a1" />

Por ultimo, en el directorio donde tienes el repositorio clonado debera de generarse una carpeta llamada volumen, en esa carpeta encontrara un archivo de salida llamado output que contendra el mensaje que viste desde el navegador.

