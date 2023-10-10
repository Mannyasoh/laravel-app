#!/bin/bash

cd laravel-app/

# Update Laravel app (e.g., pull from the repository, run migrations)
git pull origin main
composer install
php artisan migrate --seed

cp -rf public/ /var/www/html/lavarel-app/public

sudo systemctl restart php8.1-fpm

sudo systemctl restart nginx
# Restart the Laravel app's PHP-FPM service
sudo systemctl restart php8.1-fpm # Adjust for your PHP version
