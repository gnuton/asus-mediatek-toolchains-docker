FROM ubuntu:12.04
MAINTAINER Antonio Aloisio <gnuton@gnuton.org>

ENV DEBIAN_FRONTEND noninteractive
ENV PATH="/opt/trendchip/mips-linux-uclibc/usr/bin/:${PATH}"

WORKDIR /build

ADD toolchain/mips-linux-uclibc.tgz /opt/trendchip/

RUN \
  DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get install -y build-essential bison flex gawk dos2unix libstdc++5 ia32-libs autoconf2.13 autoconf-archive gnu-standards autoconf-doc libtool gettext git net-tools groff  && \
  echo "Adding non-root user..." && \
  useradd -ms /bin/bash user && \
  echo "user:user" | chpasswd && adduser user sudo
  
USER user 
