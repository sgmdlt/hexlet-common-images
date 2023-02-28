FROM golangci/golangci-lint:v1.51.2-alpine

RUN apk add --no-cache bash

ENV GOFLAGS=-buildvcs=false
#ENV GOLANGCI_LINT_CACHE=/linter/.cache

WORKDIR /linter

COPY linter linter

RUN chmod +x linter

CMD ./linter