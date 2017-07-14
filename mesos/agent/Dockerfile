FROM pixelmilk/mesos
MAINTAINER Sebastian Doell <sebastian@katallaxie.me>

RUN apt-get update && \
    apt-get -y install apt-transport-https ca-certificates && \
    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
    echo deb https://apt.dockerproject.org/repo ubuntu-xenial main > /etc/apt/sources.list.d/docker.list && \
    apt-get update && \
    apt-get -y install curl docker-engine && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["mesos-slave", "--no-hostname_lookup"]