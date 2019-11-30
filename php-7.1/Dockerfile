FROM php:7.1-cli

RUN apt-get update \
 && apt-get install -y wget gnupg libzip-dev libc-client-dev libkrb5-dev zlib1g-dev libpng-dev \
 		libxml2-dev libjpeg62-turbo-dev libfreetype6-dev libmagickwand-dev \
 && apt-get clean \
 && docker-php-source extract \
 && docker-php-ext-configure imap --with-imap-ssl --with-kerberos \
 && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
 && docker-php-ext-install -j$(nproc) \
    pdo_mysql zip imap gd soap mbstring sockets \
 && pecl install imagick \
 && docker-php-ext-enable imagick \
 && docker-php-source delete \
 && echo "memory_limit = 2G" > /usr/local/etc/php/conf.d/memory_limit.ini \
 && echo "max_input_vars = 99999" > /usr/local/etc/php/conf.d/max_input_vars.ini \
 && curl -sL https://deb.nodesource.com/setup_12.x | bash \
 && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update \
 && apt-get install -y nodejs yarn zip unzip \
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
