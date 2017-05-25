FROM ubuntu:16.04

WORKDIR /rig

# RUN dpkg --add-architecture i386

RUN apt-get update

RUN apt-get install build-essential curl libcurl3 -y

COPY claymore-miner /rig/claymore-miner

CMD /rig/claymore-miner/start
