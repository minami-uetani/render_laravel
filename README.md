# How to
<!-- put laravel file ./laravel -->

# build & run
docker build -t nginx-php-fpm:php80 --network=host ./
docker run --name nginx-php-fpm --rm -it -p 80:80 nginx-php-fpm:php80

## one liner
docker build -t nginx-php-fpm:php80 --network=host ./ && docker run --name nginx-php-fpm --rm -it -p 80:80 nginx-php-fpm:php80


# go container

docker exec -it nginx-php-fpm bash


# defalut root

/usr/share/nginx/html

# kengen

chmod +x hello.sh

