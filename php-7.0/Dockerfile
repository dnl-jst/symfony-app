FROM ubuntu:bionic

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get -qq update \
 && apt-get -qq install -y software-properties-common curl apt-transport-https \
 && LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php \
 && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
 && curl -sL https://deb.nodesource.com/setup_10.x | bash \ 
 && apt-get -qq install -y php7.0 apache2 libapache2-mod-php7.0 php7.0-mysql php7.0-curl php7.0-cli php7.0-zip php7.0-xml php7.0-mbstring php7.0-soap php7.0-gd php7.0-xdebug php7.0-imap graphviz nodejs yarn zip unzip \
 && ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
 && dpkg-reconfigure --frontend noninteractive tzdata \
 && rm -rf /var/lib/apt/lists/*
