FROM mohsenmottaghi/php-fpm-zts:latest

RUN apt update -y && apt-get update -y
RUN apt-get install -y vim git

WORKDIR /var/www
RUN git clone https://github.com/krakjoe/parallel.git

WORKDIR /var/www/parallel
RUN phpize \
    && ./configure --enable-parallel \
    && make \
    && make install

RUN pecl install xdebug

COPY .docker-config/php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/html
