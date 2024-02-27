#!/bin/sh

cd /var/www/html
chmod -R 777 storage
composer update
php artisan key:generate
php artisan storage:link

/usr/bin/supervisord -c /etc/supervisord.conf
