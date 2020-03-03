TAG = eu.gcr.io/infinitetree/on3-events
.PHONY: build push serve build-css

build-css:
	@cd themes/on3-tailwind && npm run build

build: build-css
	@hugo -D
	@docker build -t $(TAG) .

push:
	@docker push $(TAG)

serve: build-css
	@hugo server -D