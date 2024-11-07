FROM python:3.10-slim

WORKDIR /linter

# https://docs.sqlfluff.com/en/stable/
RUN pip install -U --target ./lib sqlfluff==2.3.1

COPY linter .

CMD ./linter
