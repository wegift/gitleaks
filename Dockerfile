FROM golang:1.18

RUN go install github.com/zricethezav/gitleaks@latest
