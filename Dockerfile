FROM ubuntu
MAINTAINER Benjamin Faal

RUN apt-get update -y
RUN apt-get install -y gdebi-core

RUN gdebi coturn_4.2.1.2-1_amd64.deb

COPY turnserver.conf /etc/turnserver.conf

EXPOSE 3478

CMD turnserver
