FROM ubuntu
LABEL maintainer="salome@gmail.com"
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
#RUN systemctl start apache2
#RUN systemctl enable apache2
#RUN systemctl status apache2
EXPOSE 80
COPY ecomm-master/index.html /var/www/html
CMD [“apache2ctl”, “-D”, “FOREGROUND”]