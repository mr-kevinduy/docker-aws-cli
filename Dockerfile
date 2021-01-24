FROM ubuntu:16.04

MAINTAINER KevinDuy <mr.kevinduy@gmail.com>

ADD install.sh /install.sh
RUN chmod +x /*.sh
RUN /install.sh

ENV AWS_ACCESS_KEY_ID ""
ENV AWS_SECRET_ACCESS_KEY ""
ENV AWS_DEFAULT_REGION "us-east-1"
