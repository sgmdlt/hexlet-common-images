FROM python:3.9-alpine

WORKDIR /linter

RUN pip install -U --target ./lib wemake-python-styleguide==0.14.1

COPY linter linter
COPY setup.cfg setup.cfg

CMD ./linter
