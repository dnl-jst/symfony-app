FROM ubuntu:bionic

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get -qq update \
 && apt-get -qq install -y software-properties-common curl apt-transport-https \
 && LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php \
 && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
 && curl -sL https://deb.nodesource.com/setup_10.x | bash \ 
 && apt-get -qq install -y php7.3 apache2 libapache2-mod-php7.3 php7.3-mysql php7.3-curl php7.3-cli php7.3-zip php7.3-xml php7.3-mbstring php7.3-soap php7.3-gd php7.3-imap graphviz nodejs yarn unzip \
 && ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
 && dpkg-reconfigure --frontend noninteractive tzdata \
 && rm -rf /var/lib/apt/lists/*

