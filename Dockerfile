FROM alpine

RUN apk add curl tar && \
  curl -s https://download.docker.com/linux/static/stable/x86_64/docker-20.10.6.tgz | tar -xzf-


FROM amazon/aws-cli:2.2.23

LABEL maintainer "Jan Sauer <jan@jansauer.de> (https://jansauer.de/)"

ENV DOCKER_TLS_CERTDIR="/certs" \
    DOCKER_HOST="tcp://docker:2376" \
    DOCKER_TLS_VERIFY=1 \
    DOCKER_CERT_PATH="$DOCKER_TLS_CERTDIR/client"
ENTRYPOINT ["/usr/bin/bash", "-l", "-c"]

COPY --from=0 /docker/docker /usr/local/bin
