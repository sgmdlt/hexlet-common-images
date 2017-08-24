FROM php:7.1.8

WORKDIR /usr/src

RUN apt-get update && apt-get install -y git-core

# RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
# && php -r "if (hash_file('SHA384', 'composer-setup.php') === 'aa96f26c2b67226a324c27919f1eb05f21c248b987e6195cad9690d5c1ff713d53020a02ac8c217dbf90a7eacc9d141d') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
# && php composer-setup.php --install-dir=/bin \
# && php -r "unlink('composer-setup.php');"

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
  && php composer-setup.php --install-dir=/bin \
  && php -r "unlink('composer-setup.php');"

RUN composer.phar global require "squizlabs/php_codesniffer=*"

COPY linter linter
RUN chmod +x linter

VOLUME /tmp
VOLUME /root/.composer/cache

CMD ./linter
