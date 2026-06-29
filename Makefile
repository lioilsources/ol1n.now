# ol1n.now — static app store
# Source of truth: apps/<slug>/meta.md (YAML front-matter + markdown body)

SHELL := /bin/bash
SCRIPTS := scripts
DIST := dist
PORT ?= 8099

.DEFAULT_GOAL := help

.PHONY: help build fetch screenshots all deploy serve tunnel clean

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN{FS=":.*?## "}{printf "  \033[36m%-12s\033[0m %s\n", $$1, $$2}'

build: ## Generate the static site into dist/
	@$(SCRIPTS)/build-site.sh

fetch: ## Download latest GitHub release artifacts into dist/downloads/
	@$(SCRIPTS)/fetch-artifacts.sh

screenshots: ## Resize raw screenshots into store sizes in dist/screenshots/
	@$(SCRIPTS)/resize-screenshots.sh

all: fetch screenshots build ## fetch + screenshots + build

deploy: build ## Publish dist/ to the gh-pages branch
	@$(SCRIPTS)/deploy.sh

serve: build ## Serve dist/ locally for preview
	@echo "Serving $(DIST) at http://localhost:$(PORT)"
	@cd $(DIST) && python3 -m http.server $(PORT)

tunnel: build ## Serve dist/ locally and expose it at http://ol1n.now via cloudflared
	@echo "Starting local origin on :$(PORT) + cloudflared tunnel..."
	@cd $(DIST) && python3 -m http.server $(PORT) >/tmp/ol1n-serve.log 2>&1 &
	@cloudflared tunnel --config cloudflared/config.yml run

clean: ## Remove generated site (keeps downloads/ and screenshots/)
	@rm -f $(DIST)/*.html && rm -rf $(DIST)/assets $(DIST)/icons
	@echo "cleaned generated html/assets"
