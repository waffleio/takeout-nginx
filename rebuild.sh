#!/bin/bash -x

docker rm -f nginx && \
docker build --tag "waffleio/takeout-nginx" . && \
docker run -d --name nginx --link app --link api --link hooks --link poxa -p 80:80 waffleio/takeout-nginx && \
sleep 2 && \
docker ps && \
# docker exec -it nginx cat /etc/nginx/nginx.conf && \
docker logs -f nginx
