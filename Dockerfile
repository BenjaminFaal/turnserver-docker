FROM ubuntu
MAINTAINER Benjamin Faal

RUN apt-get update -y

RUN apt-get install -y gdebi-core

EXPOSE 3478

CMD turnserver