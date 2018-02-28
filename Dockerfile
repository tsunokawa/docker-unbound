FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y install unbound && \
    apt-get clean

ADD unbound.conf /etc/unbound/
CMD ["/usr/sbin/unbound", "-d", "-c", "/etc/unbound/unbound.conf"]
EXPOSE 53/tcp
EXPOSE 53/udp

