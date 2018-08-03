FROM ubuntu:xenial-20180726

RUN apt-get -qq update \
 && apt-get -qq install -y software-properties-common curl apt-transport-https \
 && LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php \
 && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
 && curl -sL https://deb.nodesource.com/setup_8.x | bash \ 
 && apt-get -qq install -y php7.1 apache2 libapache2-mod-php7.1 php7.1-mysql php7.1-curl php7.1-cli php7.1-zip php7.1-xml php7.1-mbstring php7.1-soap php7.1-gd php7.1-xdebug php7.1-imap graphviz nodejs yarn \
 && rm -rf /var/lib/apt/lists/*
