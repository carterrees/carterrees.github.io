HUGO ?= hugo
POST_DATE ?= $(shell date +%F)
POST_SLUG ?= my-new-post

.PHONY: help serve build new-post update-theme clean
help:
	@echo "Targets: serve, build, new-post, update-theme, clean"
	@echo "Example: make new-post POST_SLUG=my-post-title"

serve:
	$(HUGO) server -D

build:
	$(HUGO) --gc --minify

new-post:
	$(HUGO) new posts/$(POST_DATE)-$(POST_SLUG).md

update-theme:
	git submodule update --remote --merge themes/blowfish

clean:
	rm -rf public resources .hugo_build.lock
