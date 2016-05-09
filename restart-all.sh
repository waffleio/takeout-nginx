docker rm -f waffle-app
docker rm -f waffle-api
docker rm -f waffle-hooks
docker rm -f waffle-hedwig
docker rm -f waffle-poxa

docker run \
  -d \
  --name waffle-app \
  --env-file /Users/ahomeyer/Desktop/waffleio-takeout/etc/waffle/environment.list \
  -v /Users/ahomeyer/Desktop/waffleio-takeout/etc/waffle/ca-certificates:/etc/waffle/ca-certificates:ro \
  quay.io/waffleio/waffle.io-app

docker run \
  -d \
  --name waffle-api \
  --env-file /Users/ahomeyer/Desktop/waffleio-takeout/etc/waffle/environment.list \
  -v /Users/ahomeyer/Desktop/waffleio-takeout/etc/waffle/ca-certificates:/etc/waffle/ca-certificates:ro \
   quay.io/waffleio/waffle.io-api

docker run \
  -d \
  --name waffle-hooks \
  --env-file /Users/ahomeyer/Desktop/waffleio-takeout/etc/waffle/environment.list \
  -v /Users/ahomeyer/Desktop/waffleio-takeout/etc/waffle/ca-certificates:/etc/waffle/ca-certificates:ro \
  quay.io/waffleio/waffle.io-hooks

docker run \
  -d \
  --name waffle-hedwig \
  --env-file /Users/ahomeyer/Desktop/waffleio-takeout/etc/waffle/environment.list \
  -v /Users/ahomeyer/Desktop/waffleio-takeout/etc/waffle/ca-certificates:/etc/waffle/ca-certificates:ro \
  quay.io/waffleio/hedwig

docker run \
  -d \
  --name waffle-poxa \
  --env-file /Users/ahomeyer/Desktop/waffleio-takeout/etc/waffle/environment.list \
  -v /Users/ahomeyer/Desktop/waffleio-takeout/etc/waffle/ca-certificates:/etc/waffle/ca-certificates:ro \
  quay.io/waffleio/poxa
