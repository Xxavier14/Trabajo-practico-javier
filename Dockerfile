FROM ubuntu:latest

WORKDIR /home/repositorio/Trabajo-practico-javier
COPY . .
RUN apt-get update
RUN apt-get install bc -y

CMD [ "./menu.sh" ]
