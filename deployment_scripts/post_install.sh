#!/bin/bash
#sudo cp /home/ubuntu/flarum/deployment_scripts/flarum.ini /etc/php5/fpm/conf.d/gravity.ini
sudo cp /home/ubuntu/deployment_scripts/flarum.ini /etc/php5/fpm/conf.d/gravity.ini
#sudo cp /home/ubuntu/flarum/deployment_scripts/nginx.conf /etc/nginx/nginx.conf
sudo cp /home/ubuntu/deployment_scripts/nginx.conf /etc/nginx/nginx.conf
#cd /home/ubuntu/flarum
cd /home/ubuntu/
php composer.phar install
php flarum cache:clear
