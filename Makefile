TAG = eu.gcr.io/infinitetree/on3-events
.PHONY: build push

build:
	@hugo -D
	@docker build -t $(TAG) .

push:
	@docker push $(TAG)