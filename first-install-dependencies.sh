# Installing Laravel and Bower dependencies
ROOT_DIR=`pwd`
npm install --cache-min 999999
bower install
cd $ROOT_DIR/laravel
composer update
php artisan key:generate
cd $ROOT_DIR/larave/public/assets/vendor/knockoutjs
grunt clean checktrailingspaces build:debug test:phantomjs
cd $ROOT_DIR
