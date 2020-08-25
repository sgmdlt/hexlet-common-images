FROM python:3.6-alpine

WORKDIR /linter

RUN pip install -U --target ./lib wemake-python-styleguide==0.14.1

COPY linter linter
COPY setup.cfg setup.cfg

CMD ./linter
