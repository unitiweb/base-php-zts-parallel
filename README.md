## davetorres/base-php-zts-parallel

### Build image
- docker build . -t davetorres/base-php-zts-parallel:latest
- docker push davetorres/base-php-zts-parallel:latest

**May also want to take by php version**

- docker build . -t davetorres/base-php-zts-parallel:php7.4
- docker push davetorres/base-php-zts-parallel:php7.4

### Start with docker-compose
- docker-compose up -d
