.PHONY: build-it
build-it:
	docker run -v `pwd`:/antora --rm antora/antora --stacktrace site.yml

.PHONY: open-it
open-it:
	open docs/index.html

.PHONY: deploy-it
deploy-it: build-it
	git add -A .
	git commit -am "Build a new documentation site [ci skip]"
	git push origin master
