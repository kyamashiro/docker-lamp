FROM php:7.4-apache

RUN yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=on" >> /usr/local/etc/php/conf.d/xdebug.ini

RUN apt update -yqq && apt install -yqq \
    git \
    wget \
    zip \
    unzip \
    vim \
    msmtp msmtp-mta \
    default-mysql-server \
    && echo 'mysql-server mysql-server/root_password password pass' | debconf-set-selections \
    && echo 'mysql-server mysql-server/root_password_again password pass' | debconf-set-selections \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install pdo_mysql

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN a2enmod rewrite \
    && a2enmod ssl \
    && a2ensite default-ssl \
    && usermod -u 1000 www-data \
    && chown -R www-data:www-data /var/www
