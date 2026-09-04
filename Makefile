# ol1n.now — static app store
# Source of truth: apps/<slug>/meta.md (YAML front-matter + markdown body)

SHELL := /bin/bash
SCRIPTS := scripts
DIST := dist
PORT ?= 8099

.DEFAULT_GOAL := help

.PHONY: help build fetch screenshots import-skins import-visuals all deploy serve clean

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN{FS=":.*?## "}{printf "  \033[36m%-12s\033[0m %s\n", $$1, $$2}'

build: ## Generate the static site into dist/
	@$(SCRIPTS)/build-site.sh

fetch: ## Download latest GitHub release artifacts into dist/downloads/
	@$(SCRIPTS)/fetch-artifacts.sh

screenshots: ## Resize raw screenshots into store sizes in dist/screenshots/
	@$(SCRIPTS)/resize-screenshots.sh

import-skins: ## (authoring) Re-encode skin galleries from a local Kiran checkout into apps/kirian/skins/
	@KIRAN_SRC=$${KIRAN_SRC:-$(CURDIR)/../Kiran} $(SCRIPTS)/import-skins.sh

import-visuals: ## (authoring) Re-encode an app's artwork gallery into apps/<slug>/visuals/
	@DOODLEBUGS_SRC=$${DOODLEBUGS_SRC:-/Volumes/Unity_Storage/Code/doodlebugs-revival-6} $(SCRIPTS)/import-visuals.sh doodlebugs

all: fetch screenshots build ## fetch + screenshots + build

deploy: ## Trigger the Build & Deploy store workflow (builds from origin/main on CI)
	@$(SCRIPTS)/deploy.sh

serve: build ## Serve dist/ locally for preview
	@echo "Serving $(DIST) at http://localhost:$(PORT)"
	@cd $(DIST) && python3 -m http.server $(PORT)

clean: ## Remove generated site (keeps downloads/ and screenshots/)
	@rm -f $(DIST)/*.html && rm -rf $(DIST)/assets $(DIST)/icons $(DIST)/skins
	@echo "cleaned generated html/assets"
