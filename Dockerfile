FROM mohsenmottaghi/php-fpm-zts:latest

RUN apt update -y && apt-get update -y
RUN apt-get install -y vim git

WORKDIR /var/www
RUN git clone https://github.com/krakjoe/parallel.git
WORKDIR /var/www/parallel
RUN phpize
RUN ./configure --enable-parallel
RUN make
RUN make install

COPY .docker-config/php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/html
