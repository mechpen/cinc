.PHONY: image
image:
	docker build . -t mechpen/cinc:latest

.PHONY: release
release:
	docker push mechpen/cinc:latest
