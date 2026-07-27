# PractiLoop Extension (`apps/extension`)

> Chrome Extension (Manifest V3) for PractiLoop containing the Shadow DOM floating pet UI, Udemy context tracking, and typed runtime messaging.

---

## 🏗️ Stack

* **React 18 & TypeScript (Strict)**
* **Chrome Manifest V3**
* **Vite**: Bundles multi-entry scripts (`background/index.js`, `content/index.js`).
* **Shadow DOM**: Encapsulated pet UI mounting.
* **pnpm**: Workspace package management.

---

## 🚀 Development Setup

```bash
# From repository root:

# 1. Build extension bundle (outputs to dist/)
pnpm --filter @practiloop/extension build

# 2. Run watch mode for real-time development
pnpm --filter @practiloop/extension dev
```

### Loading in Chrome:
1. Open Chrome and navigate to `chrome://extensions`.
2. Enable **Developer mode** (top-right toggle).
3. Click **Load unpacked** and select the `apps/extension/dist` folder.
