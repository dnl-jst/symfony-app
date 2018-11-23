FROM ubuntu:bionic

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get -qq update \
 && apt-get -qq install -y software-properties-common curl apt-transport-https \
 && LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php \
 && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
 && curl -sL https://deb.nodesource.com/setup_8.x | bash \ 
 && apt-get -qq install -y php7.2 apache2 libapache2-mod-php7.2 php7.2-mysql php7.2-curl php7.2-cli php7.2-zip php7.2-xml php7.2-mbstring php7.2-soap php7.2-gd php7.2-xdebug php7.2-imap graphviz nodejs yarn unzip \
 && ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
 && dpkg-reconfigure --frontend noninteractive tzdata \
 && rm -rf /var/lib/apt/lists/*

EXPOSE 80
CMD apachectl -D FOREGROUND
