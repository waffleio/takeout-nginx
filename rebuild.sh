#!/bin/bash -x

docker rm -f nginx && \
docker build --tag "waffleio/takeout-nginx" /code/takeout-nginx && \
docker run -d \
  --name nginx \
  --link app \
  --link api \
  --link hooks \
  --link poxa \
  -p 443:443 \
  -v /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/nginx/certs/:/etc/nginx/certs \
  waffleio/takeout-nginx && \
sleep 2 && \
docker ps && \
# docker exec -it nginx cat /etc/hosts && \
docker logs -f nginx
