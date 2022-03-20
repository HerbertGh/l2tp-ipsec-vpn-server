FROM debian:jessie
MAINTAINER Francois COJEAN <francois.cojean@gmail.com>

ENV REFRESHED_AT 2016-06-05

ENV SWAN_VER 3.17
ENV DEBIAN_FRONTEND noninteractive


COPY ./run.sh /run.sh
RUN chmod 755 /run.sh

EXPOSE 500/udp 4500/udp

VOLUME ["/lib/modules"]

CMD ["/run.sh"]
