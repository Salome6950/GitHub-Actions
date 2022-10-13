FROM ubuntu:20.04
LABEL maintainer="salome@gmail.com"
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install apache2 -y
RUN systemctl start apache2
RUN systemctl enable apache2
RUN systemctl status apache2
EXPOSE 80
COPY ecomm-master/index.html /var/www/html