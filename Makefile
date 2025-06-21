.PHONY: check
check:
	docker pull ghcr.io/renovatebot/renovate:full
	docker run -it --rm -v .:/workdir ghcr.io/renovatebot/renovate:full renovate-config-validator /workdir/default.json
