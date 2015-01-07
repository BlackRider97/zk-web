FROM ubuntu:14.04

RUN  apt-get update && \ 
     apt-get install -y leiningen

RUN apt-get install -y git

RUN git clone https://github.com/BlackRider97/zk-web.git

WORKDIR zk-web

ENV LEIN_ROOT 1

RUN lein deps

CMD lein run

EXPOSE 8080
