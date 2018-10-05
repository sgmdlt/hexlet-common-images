build: build-php build-js build-java build-null

build-php:
	docker build -t hexlet/common-phpcs phpcs

build-js:
	docker build -t hexlet/common-eslint eslint

build-java:
	docker build -t hexlet/common-checkstyle checkstyle

build-null:
	docker build -t hexlet/common-nulllint nulllint

bash:
	docker run -it -v $(CURDIR)/$(N)/app:/usr/src/app --read-only hexlet/common-$(N) /bin/bash

push:
	docker push hexlet/common-$(N)

lint-js:
	docker run -t --read-only -v $(CURDIR)/eslint/app:/usr/src/app \
	  -v $(CURDIR)/eslint/package.json:/linter/package.json \
	  -v $(CURDIR)/eslint/.eslintrc.yml:/linter/.eslintrc.yml \
	  -v $(CURDIR)/eslint/linter:/linter/linter \
	  hexlet/common-eslint

lint-php:
	docker run -t --read-only -v $(CURDIR)/phpcs/app:/usr/src/app \
	  -v $(CURDIR)/phpcs/linter:/linter/linter \
	  -v $(CURDIR)/phpcs/composer.json:/phpcs/composer.json \
	  hexlet/common-phpcs
