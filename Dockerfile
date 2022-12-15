FROM ubuntu:latest
# Utilizar la version mas reciente de ubuntu

WORKDIR /home/repositorio/Trabajo-practico-javier
# Establecer la ruta del archivo deseado para que se ejecute en el contenedor

COPY . .
# Copiar los archivos del directorio actual al Workdir 

RUN apt-get update
# Actualiza los paquetes de Ubunt

RUN apt-get install bc -y
# Instalar bc, -y indica yes

CMD [ "./menu.sh" ]
