FROM ubuntu:20.04
LABEL maintainer="salome@gmail.com"
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt install httpd -y
COPY ecomm-master/index.html /var/www/html