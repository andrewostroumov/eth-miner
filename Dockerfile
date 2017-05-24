FROM ubuntu:16.04

WORKDIR /rig

RUN apt-get update
RUN apt-get install xz-utils

ADD . /rig

RUN uname -m

RUN tar -Jxvf amdgpu-pro-17.10-414273.tar.xz
RUN ./amdgpu-pro-17.10-414273/amdgpu-pro-install -y

CMD "/rig/claymore-miner/start"
