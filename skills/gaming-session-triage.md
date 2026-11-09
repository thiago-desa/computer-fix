# Skill: Gaming session triage

Use when the owner is about to play and wants the PC to give the game room.

## Steps

1. Read free RAM, top working sets, GPU temperature and power draw (if available), and recent crash markers.
2. Turn on Windows Game Mode if it is off. Prefer a High Performance or Ultimate Performance power plan while plugged in.
3. Close or suspend heavy non-game apps the owner agrees to close (browsers, chat clients, heavy Electron apps).
4. Optionally raise the game process priority after it launches (High, not Realtime).
5. Re-measure free RAM and GPU state. Tell the owner in one short update whether they are clear to queue.

## Rules

- If free RAM is still crash-territory after closing apps, say so plainly and recommend keeping the browser closed during the match.
- Do not change GPU power caps mid-match unless the owner asked for that as a standing fix.
