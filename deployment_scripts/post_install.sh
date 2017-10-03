#!/bin/bash
sudo \cp -f /home/ubuntu/flarum/deployment_scripts/flarum.ini /etc/php5/fpm/conf.d/gravity.ini
sudo \cp -f /home/ubuntu/flarum/deployment_scripts/nginx.conf /etc/nginx/nginx.conf
cd /home/ubuntu
#cd /home/ubuntu/flarum
php composer.phar install
php flarum cache:clear
