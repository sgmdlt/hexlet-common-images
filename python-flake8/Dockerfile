FROM python:3.9-alpine

WORKDIR /linter

RUN pip install -U --target ./lib wemake-python-styleguide==0.15.0

COPY linter linter
COPY setup.cfg setup.cfg

CMD ./linter
