FROM ubuntu:12.04
MAINTAINER Antonio Aloisio <gnuton@gnuton.org>

ENV DEBIAN_FRONTEND noninteractive
ENV PATH="/opt/trendchip/mips-linux-uclibc/usr/bin/:${PATH}"

WORKDIR /build

ADD toolchain/mips-linux-uclibc.tgz /opt/trendchip/

RUN \
  apt-get update \
  && apt-get install -y build-essential bison flex gawk dos2unix libstdc++5 ia32-libs autoconf2.13 autoconf-archive gnu-standards autoconf-doc libtool gettext git net-tools nroff

USER root 
