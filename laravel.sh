#!/bin/bash
ls
cd /usr/share/nginx/html

rm -rf *.*
rm -rf .*
rm -rf *

# larave install
# composer create-project --prefer-dist laravel/laravel .
git clone https://github.com/minami-uetani/laravel8_tah .

echo "Runnning yarn production..."
yarn
yarn production

# rm -rf ./node_modules
# rm -rf ./package.json
# rm -rf ./yarn.lock

echo "Running composer..."
composer install --no-dev

echo "Caching config..."
php artisan config:cache
    
echo "Caching routes..."
php artisan route:cache

echo "Running migrations..."
php artisan migrate --force

cp .env.example .env
php artisan key:generate
php artisan storage:link
chmod -R 777 storage bootstrap/cache/

# cat .env
# ls
