FROM php:8.3-fpm
RUN apt-get update && apt-get install -y \
        libfreetype-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && pecl install redis-6.0.2 \
    && pecl install xdebug-3.3.1 \
    && docker-php-ext-install pdo pdo_mysql \
    && docker-php-ext-enable redis xdebug pdo_mysql pdo