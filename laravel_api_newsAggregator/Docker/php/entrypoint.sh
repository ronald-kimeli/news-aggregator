#!/bin/bash

if [ ! -f "vendor/autoload.php" ]; then
    composer install --no-progress --no-interaction
fi

if [ ! -f ".env" ]; then
    echo "Creating env file for env $APP_ENV"
    cp .env.example .env
else
    echo "env file exists."
fi

if [ -f ".env" ]; then
    php artisan key:generate
    php artisan config:clear
    php artisan view:clear
    php artisan view:clear
    php artisan view:clear

    chmod -R 777 storage/
    chown -R www-data:www-data storage/

    chmod -R 777 bootstrap/

    php artisan migrate:fresh --seed

    echo "Our app is now ready to handle requests"
fi

php-fpm
nginx -g "daemon off;"

