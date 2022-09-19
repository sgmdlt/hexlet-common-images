FROM ubuntu:22.04

RUN apt-get update && apt-get install -y wget make
RUN wget -q https://github.com/postmodern/ruby-install/archive/v0.8.5.tar.gz \
    && tar -xzf v0.8.5.tar.gz -C /var/tmp \
    && rm v0.8.5.tar.gz
RUN cd /var/tmp/ruby-install-0.8.5 \
    && make install \
    && rm -rf /var/tmp/ruby-install-0.8.5

RUN ruby-install --system ruby 3.1.2

ENV GEM_HOME /linter/vendor/bundler

RUN gem install rubocop rubocop-minitest rubocop-rails

WORKDIR /linter

COPY linter .
COPY .rubocop.yml .

CMD ./linter
