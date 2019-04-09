FROM python:3.6-alpine

RUN pip install -U wemake-python-styleguide

WORKDIR /linter

COPY linter linter
COPY setup.cfg setup.cfg

CMD ./linter
