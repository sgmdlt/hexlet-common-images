FROM composer:2.2.24

WORKDIR /linter

RUN apk add --no-cache gwenhywfar

COPY composer.json composer.json
RUN composer install

COPY linter /linter
COPY phpcs.xml /linter
# RUN chmod +x linter

VOLUME /tmp

CMD ./linter
