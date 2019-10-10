FROM composer:1.9.0

WORKDIR /linter

COPY composer.json composer.json
RUN composer install

COPY linter /linter
# RUN chmod +x linter

VOLUME /tmp

CMD ./linter
