FROM centos:7

LABEL maintainer "Adam Olley <adam.olley@blackboard.com>"

RUN yum update -y \
 && yum install -y epel-release \
 && yum install -y \
   autoconf \
   automake \
   cmake \
   curl \
   gcc \
   gcc-c++ \
   git \
   jq  \
   libtool \
   libtool-ltdl \
   libxml2-devel \
   make \
   pkgconfig \
   rpm-build \
   sudo \
   tree \
   wget \
   which \
   yum-utils \
 && yum clean all \
 && rm -rf /var/cache/yum

RUN wget https://github.com/tianon/gosu/releases/download/1.11/gosu-amd64 -O gosu \
 && chmod +x gosu \
 && mv gosu /usr/local/sbin/
