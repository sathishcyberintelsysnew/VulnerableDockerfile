FROM php:7.4.25-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql