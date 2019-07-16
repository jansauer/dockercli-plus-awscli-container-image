FROM alpine:3.10.1

LABEL maintainer "Jan Sauer <jan@jansauer.de> (https://jansauer.de/)"

# AWS CLI Release:
# https://github.com/aws/aws-cli/releases
# https://pypi.org/project/awscli/#downloads

# Elastic Beanstalk CLI Release:
# https://pypi.org/project/awsebcli/

# Docker Release:
# https://github.com/docker/docker-ce/releases
# https://pkgs.alpinelinux.org/packages?name=docker&branch=v3.9

ENV AWS_CLI_VERSION=1.16.198 AWS_EB_CLI_VERSION=3.15.2 DOCKER_VERSION=18.09.7

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates docker=${DOCKER_VERSION}-r0 && \
    pip --no-cache-dir install pyyaml==3.13 awscli==${AWS_CLI_VERSION} awsebcli==${AWS_EB_CLI_VERSION} && \
    rm -rf /var/cache/apk/*

WORKDIR /data
