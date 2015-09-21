docker rm -f app
docker rm -f api
docker rm -f hooks
docker rm -f hedwig
docker rm -f rally
docker rm -f poxa

docker run \
  -d \
  --name app \
  --env-file /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/environment.list \
  -v /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/ca-certificates:/etc/waffle/ca-certificates:ro \
  quay.io/waffleio/waffle.io-app

docker run \
  -d \
  --name api \
  --env-file /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/environment.list \
  -v /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/ca-certificates:/etc/waffle/ca-certificates:ro \
   quay.io/waffleio/waffle.io-api

docker run \
  -d \
  --name hooks \
  --env-file /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/environment.list \
  -v /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/ca-certificates:/etc/waffle/ca-certificates:ro \
  quay.io/waffleio/waffle.io-hooks

docker run \
  -d \
  --name hedwig \
  --env-file /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/environment.list \
  -v /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/ca-certificates:/etc/waffle/ca-certificates:ro \
  quay.io/waffleio/hedwig

docker run \
  -d \
  --name rally \
  --env-file /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/environment.list \
  -v /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/ca-certificates:/etc/waffle/ca-certificates:ro \
  quay.io/waffleio/waffle.io-rally-integration

docker run \
  -d \
  --name poxa \
  --env-file /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/environment.list \
  -v /Users/ahomeyer/Desktop/waffle-takeout/waffleio-takeout/etc/waffle/ca-certificates:/etc/waffle/ca-certificates:ro \
  quay.io/waffleio/poxa
