FROM python:3.12-slim

WORKDIR /linter

# https://docs.sqlfluff.com/en/stable/
RUN pip install -U --target ./lib sqlfluff==3.2.2

COPY linter .

CMD ["./linter"]
