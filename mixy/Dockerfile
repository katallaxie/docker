FROM openresty/openresty:trusty
MAINTAINER Sebastian Döll <sebastian@katallaxie.me>

COPY \
    scripts/start.sh /start.sh

COPY \
    conf/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

RUN \
    chmod +x /start.sh

ENTRYPOINT ["/start.sh"]