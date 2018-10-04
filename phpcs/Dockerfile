FROM composer:1.7.2

WORKDIR /linter

COPY composer.json composer.json

RUN composer global require squizlabs/php_codesniffer

COPY linter linter
RUN chmod +x linter

ADD app /usr/src/app
VOLUME /tmp

CMD ./linter
