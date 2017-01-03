FROM leztech/dev

# install remi repo
#RUN wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
#RUN rpm -Uvh remi-release-7*.rpm
#RUN yum-config-manager --enable remi-php70
#RUN rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
#
#RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && yum-config-manager --enable remi-php70
#RUN sed -i s/"enabled=1"/"enabled=0"/g  /etc/yum/pluginconf.d/fastestmirror.conf
#RUN sed -i s/"enabled=1"/"enabled=0"/g  /etc/yum/pluginconf.d/ovl.conf
RUN rpm --import http://rpms.famillecollet.com/RPM-GPG-KEY-remi
RUN rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN  yum-config-manager --enable remi-php56
RUN \
	yum -y install \
		php \
		php-common  \
		php-fpm \
		php-mbstring \
		php-mcrypt \
		php-devel \
		php-xml \
		php-mysql \
		php-mysqlnd \
		php-pdo \
		php-opcache --nogpgcheck \
		php-bcmath \
		php-pecl-memcached \
		php-pecl-mysql \
		php-pecl-xdebug \
		php-pecl-zip \
		php-pecl-amqp --nogpgcheck \
        php-pecl-redis --nogpgcheck  \
        php-pecl-mongodb --nogpgcheck \
        php-pecl-swoole --nogpgcheck


#
#RUN   wget --max-redirect=3 -O php-7.0.11.tar.gz http://cn.php.net/get/php-7.0.11.tar.gz/from/this/mirror &&  tar -xzvf php-7.0.11.tar.gz && rm -f php-7.0.11.tar.gz
#WORKDIR /php-7.0.11
#RUN ./configure \
#    --prefix=/usr/local/php \
#    --with-config-file-path=/usr/local/php/etc \
#    --enable-fpm \
#    --with-fpm-user=www \
#    --with-fpm-group=www \
#    --enable-mysqlnd \
#    --with-mysqli=mysqlnd \
#    --with-pdo-mysql=mysqlnd \
#    --with-iconv-dir \
#    --with-freetype-dir=/usr/local/freetype \
#    --with-jpeg-dir --with-png-dir \
#    --with-zlib \
#    --with-libxml-dir=/usr \
#    --enable-xml \
#    --disable-rpath \
#    --enable-bcmath \
#    --enable-shmop \
#    --enable-sysvsem \
#    --enable-inline-optimization \
#    --with-curl \
#    --enable-mbregex \
#    --enable-mbstring \
#    --enable-intl \
#    --enable-pcntl \
#    --with-mcrypt \
#    --enable-ftp \
#    --with-gd \
#    --enable-gd-native-ttf \
#    --with-openssl \
#    --with-mhash \
#    --enable-pcntl \
#    --enable-sockets \
#    --with-xmlrpc \
#    --enable-zip \
#    --enable-soap \
#    --with-gettext \
#    --disable-fileinfo \
#    --enable-opcache \
#    --with-xsl \
#     && make \
#     && make install
#
#RUN ln -s /usr/local/php/bin/php /usr/bin/php
#RUN ln -s /usr/local/php/bin/pecl /usr/bin/pecl
#RUN ln -s /usr/local/php/sbin/php-fpm /usr/bin/php-fpm
#
#RUN pecl install redis
#RUN pecl install swoole
#RUN pecl install mongodb


RUN rm -f /etc/php-fpm.conf
ADD ./php-fpm.conf /etc/

CMD rm -f /etc/php.ini
ADD ./php.ini /etc
ADD ./start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]