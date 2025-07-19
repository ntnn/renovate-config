docker ?= docker
image ?= ghcr.io/renovatebot/renovate:full

configs ?= $(wildcard *.json *.json5 *.jsonc)

.PHONY: check
check:
	$(docker) pull $(image)
	$(docker) run --rm -v .:/workdir $(image) renovate-config-validator $(patsubst %,/workdir/%,$(configs))
