FROM ubuntu:22.04

WORKDIR /linter

# Configure PHP linter
COPY --from=composer:2.4.2 /usr/bin/composer /usr/local/bin/composer

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN echo "tzdata tzdata/Areas select Europe" > /tmp/preseed.txt; \
    echo "tzdata tzdata/Zones/Europe select Berlin" >> /tmp/preseed.txt; \
    debconf-set-selections /tmp/preseed.txt && \
    apt-get update && \
    apt-get install -y tzdata curl git

ARG PHP_VERSION=8.1

RUN apt-get update && apt-get -yq install gwenhywfar-tools

RUN apt-get update && apt-get -yq install php${PHP_VERSION} php${PHP_VERSION}-xml

COPY composer.json composer.json
RUN composer install

VOLUME /tmp

COPY phpcs.xml /linter

# Configure JavaScript linter
ARG NODE_VERSION=18

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash
RUN apt update && apt -yq install nodejs

ENV NODE_ENV production

RUN npm i -g npm-check-updates

COPY package.json .
RUN npm install

COPY .eslintrc.yml .

# Configure Python linter
RUN apt-get update && apt-get -yq install python3-pip

RUN pip install -U --target ./lib flake8==3.9.2 crudini

COPY setup.cfg setup.cfg

COPY linter .
RUN chmod +x linter

CMD ./linter
