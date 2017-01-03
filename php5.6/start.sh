#!/bin/sh

bash /work/init.sh

## create work dir
work=/work/php
conf=/work/php/etc/php-fpm.conf

if [ -f $conf ]; then
    echo "[i] PHP conf already present, skipping creation."
else
    echo "[i] PHP conf initial.."

    mkdir -p /work/php/etc /work/php/logs/session

    ## copy default configure
    cp -R /etc/bk/php-fpm.conf $conf
    cp -R /etc/bk/php.ini /work/php/etc/php.ini
    cp -R /etc/bk/conf.d /work/php/etc/conf.d
    cp -R /etc/bk/modules /work/php/modules
fi

echo "Starting PHP-FPM.."
php-fpm -RF

#echo  "10 3 * * * /usr/local/clearlog > /dev/null 2>&1"  >> /var/spool/cron/root
#echo  "10 3 * * * /usr/local/clearlog > /dev/null 2>&1"  >> /var/spool/cron/root
#echo  "10 3 * * * /usr/local/clearlog > /dev/null 2>&1"  >> /var/spool/cron/root
#echo  "10 3 * * * /usr/local/clearlog > /dev/null 2>&1"  >> /var/spool/cron/root
#
#crond
#
#supervisord -c /work/supservisor.conf