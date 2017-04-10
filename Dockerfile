FROM debian:8

RUN apt-get update && apt-get install -yq curl git

RUN curl -sSL https://get.haskellstack.org/ | sh

RUN git clone https://github.com/jgm/gitit
RUN cd gitit && stack install --install-ghc

ENV PATH /root/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

EXPOSE 5001

RUN mkdir /gitit.wiki
WORKDIR /gitit.wiki
