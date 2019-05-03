FROM centos:7

LABEL maintainer "Adam Olley <adam.olley@blackboard.com>"

RUN yum update -y \
 && yum install -y epel-release \
 && yum install -y \
   autoconf \
   automake \
   cmake \
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
   which \
   yum-utils \
 && yum clean all \
 && rm -rf /var/cache/yum
