!/bin/bash 

echo -e "\e[41m Starting instalation... \e[0m"

echo -e "\e[44m Starting Building containers... \e[0m"
docker-compose build

echo -e "\e[44m Starting containers \e[0m"
docker-compose up -d

echo -e "\e[44m Laravel key:generate \e[0m"
docker-compose exec app php artisan key:generate

echo -e "\e[44m Laravel storage:link \e[0m"
docker-compose exec app php artisan storage:link

echo -e "\e[44m Laravel migrate \e[0m"
docker-compose exec app php artisan migrate

echo -e "\e[44m Laravel db:seed \e[0m"
docker-compose exec app php artisan db:seed

echo -e "\e[41m Finished... \e[0m"
