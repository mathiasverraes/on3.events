TAG = eu.gcr.io/infinitetree/on3-events
.PHONY: build push serve

build:
	@hugo -D
	@docker build -t $(TAG) .

push:
	@docker push $(TAG)

serve:
	@hugo server -D