#!/usr/bin/env bash
if [ ! -d "/var/www/html/$APP_NAME" ]; then
    composer create-project --prefer-dist laravel/laravel /var/www/html/$APP_NAME
    cd /var/www/html/$APP_NAME
    composer install 
    chmod -R 777 ./storage
fi