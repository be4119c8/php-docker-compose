FROM php:5.6.40-fpm
RUN pecl install redis-4.0.2 \
    && pecl install xdebug-2.5.5 \
	&& docker-php-ext-install pdo_mysql \
	&& docker-php-ext-enable redis xdebug pdo_mysql 
