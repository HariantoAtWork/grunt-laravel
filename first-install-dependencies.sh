# Installing Laravel and Bower dependencies
ROOT_DIR=`pwd`
PUBLIC_DIR=$ROOT_DIR/laravel/public

npm install --cache-min 999999
bower install

cd $ROOT_DIR/laravel
composer update
php artisan key:generate
cd $ROOT_DIR/laravel/public/assets/vendor/knockoutjs
grunt clean checktrailingspaces build:debug test:phantomjs

# update and build file structure in less directory
cd $PUBLIC_DIR/assets/stylesheets
## reads variables.less (from Bootstrap directory), change path names and save to current directory
sed 's|"../fonts/"|"/assets/vendor/bootstrap/fonts/"|g' $PUBLIC_DIR/assets/vendor/bootstrap/less/variables.less > variables.less 
## reads bootstrap.less (from Bootstrap directory), change path names, except with the line 'variables' and save to current directory
sed '/variables/!s|@import "|@import "../vendor/bootstrap/less/|g' $PUBLIC_DIR/assets/vendor/bootstrap/less/bootstrap.less > bootstrap.less

cd $ROOT_DIR
echo 'DONE.'
