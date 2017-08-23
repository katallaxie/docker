FROM pixelmilk/mesos
MAINTAINER Sebastian Doell <sebastian@katallaxie.me>

COPY master/init.sh /

RUN \
    chmod +x /init.sh

CMD ["--registry=in_memory"]
ENTRYPOINT ["/init.sh", "--no-hostname_lookup", "true"]
