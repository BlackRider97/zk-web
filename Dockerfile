FROM ubuntu:14.04

RUN  apt-get update && \ 
     apt-get install -y leiningen

ADD . /zk-web

WORKDIR /zk-web

ENV LEIN_ROOT 1

RUN lein deps

CMD lein run

EXPOSE 8080
