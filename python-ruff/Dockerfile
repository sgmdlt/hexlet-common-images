FROM python:3.13-alpine

RUN apk add --no-cache bash

WORKDIR /linter

RUN pip install --target ./lib ruff
ENV PATH=$PATH:/linter/lib/bin

ENV RUFF_CACHE_DIR=/var/tmp/.cache

COPY linter .
COPY ruff.toml .

CMD ["./linter"]
