FROM php:8.0.2-fpm-alpine

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ADD ./docker/php/www.conf /usr/local/etc/php-fpm.d/www.conf

RUN addgroup -g 1000 app && adduser -G app -g app -s /bin/sh -D app

RUN mkdir -p /var/www/html

RUN chown app:app /var/www/html
# Install selected extensions and other stuff
RUN apk update \
	&& apk add --no-cache --virtual .build-deps $PHPIZE_DEPS \
	&& pecl install redis \
	&& apk --no-cache add \
	postgresql-dev \
	&& apk del -f .build-deps

WORKDIR /var/www/html

# RUN docker-php-ext-install pdo pdo_pgsql

# RUN docker-php-ext-enable redis