FROM nginx:1.9.12

RUN rm -r /etc/nginx/conf.d
RUN rm /etc/nginx/nginx.conf
