docker ?= docker
image ?= ghcr.io/renovatebot/renovate:full

.PHONY: check
check:
	$(docker) pull $(image)
	$(docker) run -it --rm -v .:/workdir $(image) renovate-config-validator /workdir/default.json
