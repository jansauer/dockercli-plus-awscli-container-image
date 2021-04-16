FROM amazon/aws-cli:2.1.38

LABEL maintainer "Jan Sauer <jan@jansauer.de> (https://jansauer.de/)"

ENTRYPOINT ["/usr/bin/bash", "-l", "-c"]

RUN amazon-linux-extras install -y docker
