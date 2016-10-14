FROM ubuntu
MAINTAINER desmfr

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -q -y && \
    apt-get dist-upgrade -q -y

RUN apt-get install -q -y software-properties-common && \
    add-apt-repository -y ppa:ethereum/ethereum && \
    apt-get update && \
    apt-get install -q -y ethereum

EXPOSE 30303

ENTRYPOINT ["/bin/bash"]
