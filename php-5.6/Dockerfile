FROM ubuntu:bionic

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get -qq update \
 && apt-get -qq install -y software-properties-common curl apt-transport-https \
 && LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php \
 && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
 && curl -sL https://deb.nodesource.com/setup_10.x | bash \ 
 && apt-get -qq install -y build-essential php5.6 apache2 libapache2-mod-php5.6 php5.6-mysql php5.6-curl php5.6-cli php5.6-zip php5.6-xml php5.6-mbstring php5.6-soap php5.6-gd php5.6-xdebug php5.6-imap graphviz nodejs yarn zip unzip \
 && ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
 && dpkg-reconfigure --frontend noninteractive tzdata \
 && rm -rf /var/lib/apt/lists/*
