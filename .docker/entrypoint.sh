#!/bin/bash

if [ ! -d "vendor" ]; then
  composer install
fi

php artisan migrate

php artisan key:generate

php-fpm
