build:
	docker build -t hexlet/common-$(N) $(N)

bash:
	docker run -it --read-only hexlet/common-$(N) /bin/bash

push:
	docker push hexlet/common-$(N)

lint:
	docker run -v $(CURDIR)/$(N)/app:/usr/src/app --read-only hexlet/common-$(N)
