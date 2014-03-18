# Installing Laravel and Bower dependencies
npm install --cache-min 999999
bower install
cd laravel
composer update
php artisan key:generate
cd ..
