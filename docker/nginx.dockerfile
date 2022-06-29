FROM nginx:stable-alpine

ADD ./docker/nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html

RUN addgroup -g 1000 app && adduser -G app -g app -s /bin/sh -D app

RUN chown app:app /var/www/html