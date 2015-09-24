FROM nginx:1.9.3

RUN rm -r /etc/nginx/conf.d
RUN rm /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf

