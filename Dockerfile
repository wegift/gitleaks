FROM golang:1.18

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends git=1:2.30.2-1 && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /opt/gitleaks

WORKDIR /opt/gitleaks

RUN git clone --depth 1 --branch v8.8.4 https://github.com/zricethezav/gitleaks.git . && \
    make build && \
    mv /opt/gitleaks/gitleaks /usr/local/bin/gitleaks
