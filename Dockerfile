FROM ubuntu:latest
MAINTAINER kumar.manoj8527387747@gmail.com
RUN apt install nginx -y
RUN apt install zip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD [“/usr/sbin/nginx”,”-D”,”FOREGROUND”]
EXPOSE 80
