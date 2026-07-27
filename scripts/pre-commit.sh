#!/usr/bin/env bash
set -e

echo "🔍 Running Pre-Commit Quality Checks..."

echo "1/4 Auto-fixing & Formatting Python Code (Ruff)..."
uv run --directory apps/api ruff check --fix src

echo "2/4 Auto-formatting TypeScript Code (Prettier)..."
pnpm --filter @practiloop/extension exec prettier --write "src/**/*.{ts,tsx,json,css}"

echo "3/4 Type-checking TypeScript Code (tsc)..."
pnpm --filter @practiloop/extension exec tsc --noEmit

echo "4/4 Running Backend Tests (pytest)..."
uv run --directory apps/api pytest

echo "✅ All Pre-Commit Checks Passed!"