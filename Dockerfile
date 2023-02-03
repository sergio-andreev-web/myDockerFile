FROM php:8.1-fpm-alpine

WORKDIR /var/www/html

RUN apk add --no-cache --update \
  libpng-dev \
  mysql-dev

#RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel
