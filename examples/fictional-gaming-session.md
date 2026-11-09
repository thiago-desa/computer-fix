# Example: fictional gaming session triage

> Fully fictional. Hostname, RAM numbers, and apps are invented.

**Owner:** about to launch a competitive FPS on a 16 GB Windows desktop.

## Before

Health snapshot (fictional):

- Free RAM: about 1.8 GB
- Chrome: 28 processes, about 4.0 GB working set
- Chat client: about 0.4 GB, set to start at login
- GPU: idle, cool, power cap already in place from an earlier standing fix

## Actions (owner approved)

1. Closed the chat client and disabled its StartupApproved entry so it would not reopen on its own.
2. Applied Chrome policies: Memory Saver on, BackgroundModeEnabled off. Did not blocklist any extensions in this pass.
3. Asked the owner to fully quit Chrome for the match (phone for social tabs).
4. Enabled Game Mode and set the game process to High priority after launch.

## After

- Free RAM: about 3.7 GB
- Chrome closed; chat closed
- GPU still within the standing power cap
- Owner queued the match

## What this demonstrates

The gaming-session and Chrome-tuning skills working together: measure, approve, change, re-measure, then get out of the way.
