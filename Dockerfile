FROM amazon/aws-cli:2.1.38

LABEL maintainer "Jan Sauer <jan@jansauer.de> (https://jansauer.de/)"

ENV DOCKER_TLS_CERTDIR="/certs" \
    DOCKER_HOST="tcp://docker:2376" \
    DOCKER_TLS_VERIFY=1 \
    DOCKER_CERT_PATH="$DOCKER_TLS_CERTDIR/client"
ENTRYPOINT ["/usr/bin/bash", "-l", "-c"]

RUN amazon-linux-extras install -y docker
