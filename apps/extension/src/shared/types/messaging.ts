/**
 * Discriminated union of all messages passed across Chrome extension contexts.
 */
export type ExtensionMessage =
  { type: "PING" } | { type: "GET_PLATFORM_CONTEXT" };

/**
 * Strongly typed response mapping for each message type.
 */
export type MessageResponseMap = {
  PING: { type: "PONG"; timestamp: number };
  GET_PLATFORM_CONTEXT: { platform: string | null; courseId: string | null };
};
