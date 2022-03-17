FROM wyveo/nginx-php-fpm:php80

RUN wget https://deb.nodesource.com/setup_lts.x && bash setup_lts.x && apt-get install -y nodejs && npm i -g yarn

# Supervisor config
COPY ./supervisord.conf /etc/supervisord.conf
# Override nginx's default config
COPY ./default.conf /etc/nginx/conf.d/default.conf
# Override default nginx welcome page

# RUN git clone https://github.com/minami-uetani/laravel8_tah ./laravel
# COPY ./laravel /usr/share/nginx/html

COPY ./start.sh /start.sh
COPY ./laravel.sh /laravel.sh
CMD ["/start.sh"]

#CMD ["/laravel.sh && /strt.sh"]
#CMD ["/start.sh"]

