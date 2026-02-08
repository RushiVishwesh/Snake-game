FROM php:8.2-apache

RUN docker-php-ext-install mysqli

RUN echo "output_buffering=On" > /usr/local/etc/php/conf.d/buffer.ini

COPY . /var/www/html/

EXPOSE 80
