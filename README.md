# PractiLoop 🎓

> Transform passive course watching into active, conversational mastery.

**PractiLoop** is an open-source, production-grade AI learning companion designed to help learners actively retain knowledge while watching video courses online. Represented as an interactive, floating animated companion injected via Chrome Extension (Manifest V3 + Shadow DOM), it actively follows lecture progression, asks contextual recall questions, evaluates conceptual understanding, and consolidates memory over time.

---

## ✨ Key Features

* **🎭 Floating Browser Companion**: Scoped UI built with React & Shadow DOM floating over course platforms (starting with Udemy).
* **🎯 Active Recall & Micro-Challenges**: Identifies natural pauses in lecture transcripts to ask targeted, high-yield application questions.
* **🗣️ Push-to-Talk Voice Interaction**: Speech-to-text input and natural text-to-speech coaching responses.
* **🧠 Retrieval-Augmented Generation (RAG)**: Hybrid vector & semantic search over lecture transcripts using `pgvector`.
* **⚙️ Multi-Agent Orchestration**: LangGraph-driven state workflows separating content generation, evaluation, coaching, and long-term memory updates.
* **📲 WhatsApp Spaced Repetition**: Offline revision quizzes, voice-note answers, and session summaries delivered straight to WhatsApp.

---

## 🏗️ Monorepo Structure & Stack

* **`apps/extension`**: Chrome Extension (Manifest V3, React 18, TypeScript Strict, Vite, Shadow DOM).
* **`apps/api`**: Backend API & AI Engine (Python 3.12, FastAPI, Pydantic, SQLAlchemy, PostgreSQL + `pgvector`, LangGraph).
* **`packages/contracts`**: Shared TypeScript types, API contracts, and runtime messaging protocols.
* **`docs/`**: Architectural Decision Records (ADR), design specs, and mentorship guides.

