FROM php

WORKDIR /usr/src

RUN apt-get update && apt-get install -y git-core

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
&& php -r "if (hash_file('SHA384', 'composer-setup.php') === 'aa96f26c2b67226a324c27919f1eb05f21c248b987e6195cad9690d5c1ff713d53020a02ac8c217dbf90a7eacc9d141d') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
&& php composer-setup.php --install-dir=/bin \
&& php -r "unlink('composer-setup.php');"

RUN composer.phar global require "squizlabs/php_codesniffer=*"

COPY linter linter
RUN chmod +x linter

VOLUME /tmp

CMD ./linter
