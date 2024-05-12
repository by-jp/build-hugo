FROM golang:1.22.3-bookworm
ENV PAGEFIND_VERSION=1.1.0
ENV TASK_VERSION=3.37.1
ENV LYCHEE_VERSION=0.15.1
ENV HUGO_VERSION=0.125.7

ARG TARGETPLATFORM

RUN apt-get install -y wget git && \
    rm -rf /var/lib/apt/lists/*

ADD install-tools.sh .
RUN bash install-tools.sh && rm ./install-tools.sh

WORKDIR /workspace
RUN git config --global safe.directory '*'
