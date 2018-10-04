FROM composer:1.7.2

WORKDIR /linter

COPY composer.json composer.json

RUN /linter/composer.phar install

COPY linter linter
RUN chmod +x linter

ADD app /usr/src/app
VOLUME /tmp
# VOLUME /root/.composer/cache

CMD ./linter
