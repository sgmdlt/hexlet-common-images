FROM python:3.6-alpine

RUN pip install -U --target=/linter wemake-python-styleguide
RUN ln -s /usr/bin/python /usr/local/bin/python

WORKDIR /linter

COPY linter linter
COPY setup.cfg setup.cfg

CMD ./linter
