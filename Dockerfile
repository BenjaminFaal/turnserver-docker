FROM ubuntu
MAINTAINER Benjamin Faal

RUN apt-get update -y
RUN apt-get install -y gdebi-core

COPY coturn_4.2.1.2-1_amd64.deb /coturn.deb
RUN gdebi --force-all -i coturn.deb

COPY turnserver.conf /etc/turnserver.conf

EXPOSE 3478

CMD turnserver
