FROM golang:1.22-alpine
ENV PAGEFIND_VERSION=1.1.0
ENV TASK_VERSION=3.36.0
ENV LYCHEE_VERSION=0.14.3

ARG TARGETPLATFORM

RUN apk update && \
    apk add ca-certificates wget git hugo && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*

ADD install-tools.sh .
RUN sh install-tools.sh && rm ./install-tools.sh

WORKDIR /workspace
RUN git config --global safe.directory '*'
