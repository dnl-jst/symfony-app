FROM php:7.3.6-cli

RUN apt update && apt install -y gnupg libzip-dev libc-client-dev libkrb5-dev zlib1g-dev libpng-dev libxml2-dev && apt clean \
 && docker-php-source extract \
 && docker-php-ext-configure imap --with-imap-ssl --with-kerberos \
 && docker-php-ext-install -j$(nproc) \
    pdo_mysql zip imap gd soap \
 && docker-php-source delete \
 && echo "memory_limit = 256M" > /usr/local/etc/php/conf.d/memory_limit.ini \
 && echo "max_input_vars = 99999" > /usr/local/etc/php/conf.d/max_input_vars.ini \
 && curl -sL https://deb.nodesource.com/setup_11.x | bash \
 && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update \
 && apt-get install -y nodejs yarn zip unzip \
 && ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
 && dpkg-reconfigure --frontend noninteractive tzdata \
 && rm -rf /var/lib/apt/lists/*
