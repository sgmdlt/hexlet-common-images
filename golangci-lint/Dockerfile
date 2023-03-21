FROM golang:alpine

RUN apk add --no-cache bash curl

WORKDIR /linter
ENV GOPATH=/linter
ENV PATH=$PATH:$GOPATH/bin

RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.50.0

ENV GOFLAGS=-buildvcs=false
ENV GOLANGCI_LINT_CACHE=/linter/.cache

COPY linter linter
COPY .golangci.yml .golangci.yml

RUN chmod +x linter

CMD ./linter