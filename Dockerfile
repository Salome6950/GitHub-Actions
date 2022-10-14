FROM tomcat:8.0-alpine
LABEL maintainer="salome@gmail.com"
RUN mkdir /usr/local/tomcat/webapps/myapp
#COPY ecomm-master/index.html /usr/local/tomcat/webapps/myapp
COPY index.html blog.html checkout.html contact.html css/ fonts/ img/ js/ oldfile regular-page.html scss/ shop.html single-blog.html single-product-details.html style.css /usr/local/tomcat/webapps/myapp/
EXPOSE 8085
CMD ["catalina.sh","run"]