FROM ubuntu:16.04
MAINTAINER kmille@androidloves.me

RUN apt-get update -qy && \
    apt-get install -yq apache2 \
                        libapache2-mod-php \
                        php7.0-mysqli \
                        curl 

RUN rm -rf /var/www/html/index.html

ADD /challenge.php /var/www/html/index.php
ADD flag.php  /var/www/html/flag.php

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80
CMD apachectl -D FOREGROUND
