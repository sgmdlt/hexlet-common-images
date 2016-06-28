build:
	docker build -t hexlet/common-$(N) $(N)

run:
	docker run -it --read-only hexlet/common-$(N) /bin/bash

push:
	docker push hexlet/common-$(N)
