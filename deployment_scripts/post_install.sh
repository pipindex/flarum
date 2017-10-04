#!/bin/bash
sudo cp /home/ubuntu/flarum/deployment_scripts/flarum.ini /etc/php5/fpm/conf.d/gravity.ini
sudo cp /home/ubuntu/flarum/deployment_scripts/nginx.conf /etc/nginx/nginx.conf
chgrp www-data /home/ubuntu/flarum
cd /home/ubuntu/flarum
sudo chmod -R 775 /home/ubuntu/flarum/assets
sudo chmod -R 775 /home/ubuntu/flarum/storage
chgrp -R www-data /home/ubuntu/flarum/assets /home/ubuntu/flarum/storage
php composer.phar install
php flarum cache:clear
