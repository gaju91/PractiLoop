import type { ExtensionMessage, MessageResponseMap } from '../shared/types/messaging';

console.log('[Background Service Worker] Initialized.');

chrome.runtime.onMessage.addListener(
    (
        message: ExtensionMessage,
        _sender: chrome.runtime.MessageSender,
        sendResponse: (response: MessageResponseMap[keyof MessageResponseMap]) => void
    ) => {
        console.log('[Background Worker] Received message:', message);

        if (message.type === 'PING') {
            sendResponse({ type: 'PONG', timestamp: Date.now() });
        }

        return true;
    }
);
