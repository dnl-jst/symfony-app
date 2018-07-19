FROM ubuntu:xenial-20180705

RUN apt-get -qq update
RUN apt-get -qq install -y software-properties-common
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get -qq update
RUN apt-get -qq install -y curl php7.2 apache2 libapache2-mod-php7.2 php7.2-mysql php7.2-curl php7.2-cli php7.2-zip php7.2-xml php7.2-mbstring php7.2-soap php7.2-gd php7.2-xdebug php7.2-imap graphviz
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN apt-get install -y nodejs
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn
