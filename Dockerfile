FROM nginx:1.9.3

RUN rm -r /etc/nginx/conf.d
RUN rm /etc/nginx/nginx.conf

# Install wget and install/updates certificates
RUN apt-get update \
 && apt-get install -y -q --no-install-recommends \
    wget \
 && apt-get clean

COPY nginx.conf /etc/nginx/nginx.conf

# VOLUME ["/etc/nginx/certs"]

