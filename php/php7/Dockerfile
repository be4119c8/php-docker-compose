FROM php:7.4-fpm
RUN pecl install redis-4.0.2 \
    && pecl install xdebug-2.9.8 \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable redis xdebug pdo_mysql 
