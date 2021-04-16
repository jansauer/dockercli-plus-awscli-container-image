FROM amazon/aws-cli:2.1.38

LABEL maintainer "Jan Sauer <jan@jansauer.de> (https://jansauer.de/)"

ENTRYPOINT [ "bash" ]

RUN amazon-linux-extras install -y docker
