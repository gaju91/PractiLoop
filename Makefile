# PractiLoop Polyglot Monorepo Makefile
.PHONY: help dev-api dev-ext test-api build-ext check lint clean install-hooks

help:
	@echo "PractiLoop Command Shortcuts:"
	@echo "  make dev-api        - Run FastAPI dev server (http://127.0.0.1:8000)"
	@echo "  make dev-ext        - Run Vite watch mode for Chrome extension"
	@echo "  make test-api       - Run pytest for Python backend"
	@echo "  make build-ext      - Build Chrome extension production bundle"
	@echo "  make check          - Run type checks across Python (mypy) and Extension (tsc)"
	@echo "  make lint           - Run linters (ruff for Python)"
	@echo "  make install-hooks  - Install pre-commit git hook"
	@echo "  make clean          - Clean build artifacts and caches"

dev-api:
	uv run --directory apps/api uvicorn learning_companion.main:app --reload

dev-ext:
	pnpm --filter @practiloop/extension dev

test-api:
	uv run --directory apps/api pytest

build-ext:
	pnpm --filter @practiloop/extension build

check:
	pnpm --filter @practiloop/extension exec tsc --noEmit
	uv run --directory apps/api mypy src

lint:
	uv run --directory apps/api ruff check src

install-hooks:
	chmod +x scripts/pre-commit.sh
	cp scripts/pre-commit.sh .git/hooks/pre-commit
	@echo "✅ Pre-commit hook installed into .git/hooks/pre-commit"

clean:
	rm -rf apps/extension/dist apps/api/.venv apps/api/.pytest_cache apps/api/.mypy_cache apps/api/.ruff_cache