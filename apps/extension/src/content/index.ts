import type {
  ExtensionMessage,
  MessageResponseMap,
} from "../shared/types/messaging";

console.log("[Content Script] Injected into host page.");

function pingBackgroundWorker(): void {
  const pingMessage: ExtensionMessage = { type: "PING" };

  chrome.runtime.sendMessage(
    pingMessage,
    (response: MessageResponseMap["PING"]) => {
      if (chrome.runtime.lastError) {
        console.error(
          "[Content Script] Ping failed:",
          chrome.runtime.lastError.message,
        );
        return;
      }
      console.log("[Content Script] Background response:", response);
    },
  );
}

pingBackgroundWorker();
