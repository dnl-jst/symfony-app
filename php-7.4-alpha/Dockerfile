FROM php:7.4.0alpha1-apache

RUN apt update && apt install -y openssl libssl-dev unzip libzip-dev libc-client-dev libkrb5-dev zlib1g-dev libpng-dev && apt clean \
 && docker-php-source extract \
 && docker-php-ext-install -j$(nproc) \
    pdo_mysql zip gd \
 && a2enmod rewrite \
 && docker-php-source delete \
 && echo "memory_limit = 2G" > /usr/local/etc/php/conf.d/memory_limit.ini \
 && echo "max_input_vars = 99999" > /usr/local/etc/php/conf.d/max_input_vars.ini

RUN apt install -y gnupg \
 && curl -sL https://deb.nodesource.com/setup_11.x | bash \
 && apt-get install -y nodejs \
 && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update \
 && apt-get install yarn \
 && ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
 && dpkg-reconfigure --frontend noninteractive tzdata \
 && rm -rf /var/lib/apt/lists/*