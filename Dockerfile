FROM tomcat:8.0-alpine
LABEL maintainer="salome@gmail.com"
RUN mkdir /usr/local/tomcat/webapps/myapp
COPY ecomm-master /usr/local/tomcat/webapps/myapp
COPY ecomm-master/index.html /usr/local/tomcat/webapps/myapp
EXPOSE 8085
CMD ["catalina.sh","run"]