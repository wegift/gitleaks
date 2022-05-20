FROM golang:1.18

RUN apt-get update -y && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt && cd /opt && \
    git clone --depth 1 --branch v8.8.4 https://github.com/zricethezav/gitleaks.git && \
    cd /opt/gitleaks && make build && \
    mv /opt/gitleaks/gitleaks /usr/local/bin/gitleaks
