FROM alpine:3.12

LABEL version="1.0"

ENV AWS_CDK_VERSION=1.58.0

RUN apk -v --no-cache --update add \
        nodejs \
        npm \
        python3 \
        py3-pip \
        ca-certificates \
        groff \
        less \
        bash \
        zip \
        && \
    update-ca-certificates && \
    npm install -g aws-cdk@${AWS_CDK_VERSION}

WORKDIR /opt/forge

CMD ["bash"]