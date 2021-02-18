FROM php:7.4.12-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apachectl restart

COPY web-php /var/www/html/

EXPOSE 80