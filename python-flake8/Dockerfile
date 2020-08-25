FROM python:3.6-alpine

WORKDIR /linter

RUN pip install -U --target ./lib wemake-python-styleguide==0.16.0

COPY linter linter
COPY setup.cfg setup.cfg

CMD ./linter
