FROM ruby

# Проблема в том что SQL выполняется в среде Node.js, а значит там нет рубей. Нам нужен линтер либо в бинарнике, либо на js.
# https://github.com/sqlfluff/sqlfluff

WORKDIR /linter

RUN gem install --install-dir vendor sqlint

ENV GEM_HOME=vendor

COPY linter /linter
# RUN chmod +x linter

VOLUME /tmp

CMD ./linter
