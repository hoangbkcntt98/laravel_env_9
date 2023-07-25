cd /var/www
sed -i "s/^DB_HOST=.*$/DB_HOST=database/" .env
sed -i "s/^DB_DATABASE=.*$/DB_DATABASE=$APP_NAME/" .env
sed -i "s/^DB_USERNAME=.*$/DB_USERNAME=$DB_USER/" .env
sed -i "s/^DB_PASSWORD=.*$/DB_PASSWORD=$DB_PASSWORD/" .env
composer install 
php artisan key:generate
php artisan migrate
chmod -R 777 ./storage