#!/bin/bash -x

docker rm -f waffle-nginx && \
docker build --tag "waffleio/takeout-nginx" /code/takeout-nginx && \
docker run -d \
  --name waffle-nginx \
  --link waffle-app \
  --link waffle-api \
  --link waffle-hooks \
  --link waffle-poxa \
  --link waffle-hedwig \
  -p 443:443 \
  -v /Users/ahomeyer/Desktop/waffleio-takeout/etc/waffle/nginx/certs/:/etc/nginx/certs \
  waffleio/takeout-nginx && \
sleep 2 && \
docker ps && \
# docker exec -it nginx cat /etc/hosts && \
docker logs -f waffle-nginx
