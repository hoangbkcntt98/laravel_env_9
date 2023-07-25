#!/usr/bin/env bash
if [ ! -d "/var/www/html/$APP_NAME" ]; then
    composer create-project --prefer-dist laravel/laravel /var/www/html/$APP_NAME
fi