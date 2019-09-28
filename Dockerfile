FROM docker:19.03.2

LABEL maintainer "Jan Sauer <jan@jansauer.de> (https://jansauer.de/)"

# AWS CLI Release:
# https://github.com/aws/aws-cli/releases
# https://pypi.org/project/awscli

# Elastic Beanstalk CLI Release:
# https://pypi.org/project/awsebcli/

ENV AWS_CLI_VERSION=1.16.248 AWS_EB_CLI_VERSION=3.15.3

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates && \
    pip --no-cache-dir install pyyaml==3.13 awscli==${AWS_CLI_VERSION} awsebcli==${AWS_EB_CLI_VERSION} && \
    rm -rf /var/cache/apk/*

WORKDIR /data
