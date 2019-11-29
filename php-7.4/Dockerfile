FROM php:7.4-cli

RUN apt update \
 && apt install -y wget gnupg openssl libssl-dev unzip libzip-dev libc-client-dev \
 		libkrb5-dev zlib1g-dev libpng-dev libjpeg62-turbo-dev libfreetype6-dev libonig-dev \
 && apt clean \
 && docker-php-source extract \
 && PHP_OPENSSL=yes docker-php-ext-configure imap --with-imap-ssl --with-kerberos \
 && docker-php-ext-configure gd --with-gd --with-freetype --with-jpeg \
 && docker-php-ext-install -j$(nproc) \
    pdo_mysql zip imap gd mbstring sockets \
 && pecl install pcov \
 && docker-php-ext-enable pcov \
 && docker-php-source delete \
 && echo "memory_limit = 2G" > /usr/local/etc/php/conf.d/memory_limit.ini \
 && echo "max_input_vars = 99999" > /usr/local/etc/php/conf.d/max_input_vars.ini \
 && curl -sL https://deb.nodesource.com/setup_11.x | bash \
 && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update \
 && apt-get install -y nodejs yarn \
 && ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
 && dpkg-reconfigure --frontend noninteractive tzdata \
 && rm -rf /var/lib/apt/lists/* \
 && curl -s https://getcomposer.org/installer | php \
 && chmod +x composer.phar \
 && mv composer.phar /usr/local/bin/composer \
 && wget -O phive.phar https://phar.io/releases/phive.phar \
 && wget -O phive.phar.asc https://phar.io/releases/phive.phar.asc \
 && gpg --keyserver hkps.pool.sks-keyservers.net --recv-keys 0x9D8A98B29B2D5D79 \
 && gpg --verify phive.phar.asc phive.phar \
 && chmod +x phive.phar \
 && mv phive.phar /usr/local/bin/phive
