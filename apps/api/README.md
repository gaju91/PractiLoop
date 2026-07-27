# PractiLoop API (`apps/api`)

> Backend API, AI engine, RAG pipeline, and LangGraph multi-agent orchestration for PractiLoop.

---

## 🏗️ Stack

* **Python 3.12**
* **FastAPI**: Async ASGI web framework.
* **Pydantic / Pydantic Settings**: Runtime validation and environment configuration.
* **uv**: High-performance Python package manager.
* **pytest**: Integration & unit testing framework.
* **Ruff & MyPy**: Formatting, linting, and static type checking.

---

## 🚀 Development Setup

```bash
# 1. Install dependencies and dev tools into local .venv
uv sync --extra dev

# 2. Run the dev API server with auto-reload (http://127.0.0.1:8000/api/v1/health)
uv run uvicorn learning_companion.main:app --reload

# 3. Run automated pytest suite
uv run pytest
```
