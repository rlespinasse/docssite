.PHONY: build
build:
	docker run -v `pwd`:/antora --rm antora/antora --stacktrace site.yml

.PHONY: open
open:
	open docs/index.html
