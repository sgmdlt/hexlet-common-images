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
	docker run -it -v $(CURDIR)/$(N)/app:/usr/src/app -v $(CURDIR)/$(N):/linter hexlet/common-$(N) /bin/bash

push:
	docker push hexlet/common-$(N)

lint-js:
	docker run -t -v $(CURDIR)/eslint/app:/usr/src/app \
	  -v $(CURDIR)/eslint/package.json:/linter/package.json \
	  -v $(CURDIR)/eslint/.eslintrc.yml:/linter/.eslintrc.yml \
	  -v $(CURDIR)/eslint/lint:/linter/lint \
	  --read-only hexlet/common-eslint
