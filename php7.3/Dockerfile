FROM composer:1.9 as composer
FROM php:7.3.8-apache

ADD php-memory-limit.ini /usr/local/etc/php/conf.d/memory_limit.ini
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        zlib1g-dev \
        libxml2-dev \
        libzip-dev \
        libonig-dev \
    && docker-php-ext-configure gd \
    && docker-php-ext-install -j$(nproc) gd pdo_mysql mysqli zip \
    && docker-php-source delete

RUN apt-get update && apt-get install -y nano zip unzip git iputils-ping net-tools acl default-mysql-client

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]