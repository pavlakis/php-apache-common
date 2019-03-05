FROM composer:1.8.4 as composer
#FROM php:7.3.2-apache
FROM php:7.2.15-apache

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
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo pdo_mysql mysqli zip json xml mbstring \
    && docker-php-source delete

RUN apt-get update && apt-get install -y nano zip unzip git iputils-ping net-tools acl mysql-client

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]