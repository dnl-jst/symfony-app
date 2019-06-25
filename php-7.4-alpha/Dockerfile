FROM ubuntu:bionic

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get -qq update \
 && apt-get -qq install -y software-properties-common curl apt-transport-https \
 && LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php \
 && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
 && curl -sL https://deb.nodesource.com/setup_10.x | bash \ 
 && apt-get -qq install -y build-essential php7.4 apache2 libapache2-mod-php7.4 php7.4-mysql php7.4-curl php7.4-cli php7.4-zip php7.4-xml php7.4-mbstring php7.4-soap php7.4-gd php7.4-imap php7.4-xdebug graphviz nodejs yarn zip unzip \
 && ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
 && dpkg-reconfigure --frontend noninteractive tzdata \
 && rm -rf /var/lib/apt/lists/*