FROM php:8.3-fpm

RUN apt-get update 

# Install Postgre PDO
RUN apt-get update && \
    apt-get install -y libpq-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pgsql pdo pdo_pgsql

WORKDIR /var/www