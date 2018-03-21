build: build-php build-js build-java

build-php:
	docker build -t hexlet/common-phpcs phpcs

build-js:
	docker build -t hexlet/common-eslint eslint

build-java:
	docker build -t hexlet/common-checkstyle checkstyle
bash:
	docker run -it --read-only hexlet/common-$(N) /bin/bash

push:
	docker push hexlet/common-$(N)

lint:
	docker run -v $(CURDIR)/$(N)/app:/usr/src/app --read-only hexlet/common-$(N)
