FROM alpine:3.9.2

LABEL maintainer "Jan Sauer <jan@jansauer.de> (https://jansauer.de/)"

# https://github.com/aws/aws-cli/releases
# https://pypi.org/project/awscli/#downloads
# https://github.com/docker/docker-ce/releases
# https://pkgs.alpinelinux.org/packages?name=docker&branch=v3.9
ENV AWS_CLI_VERSION=1.16.132 DOCKER_VERSION=18.09.1 AWS_EB_CLI_VERSION=3.15.2

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less docker=${DOCKER_VERSION}-r0 && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    pip --no-cache-dir install awsebcli==${AWS_EB_CLI_VERSION} && \
    rm -rf /var/cache/apk/*

WORKDIR /data
