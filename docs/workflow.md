# Workflow

## First run

1. Confirm the Windows PC appears in ListMachines.
2. Ask what hurts most and what must never be touched.
3. Run a read-only health snapshot (`scripts/health-snapshot.ps1` style checks).
4. Save a dated baseline to memory.
5. Optionally create a weekly read-only routine (for example Sunday morning in the owner's time zone).

## Weekly health pass

1. Re-run the snapshot.
2. Diff against the baseline: new crashes, new startup apps, disk free space, Defender detections, pending updates.
3. Message the owner only when something needs a decision. Stay quiet if nothing material changed and the routine allows silence.

## Chrome eating RAM

1. Measure process count and working set.
2. Propose Memory Saver + BackgroundModeEnabled=0 via HKLM policy.
3. Optionally blocklist named non-essential extensions the owner picks.
4. Fully quit and relaunch Chrome. Re-measure.

## Pre-game triage

1. Snapshot free RAM and GPU temperature / power.
2. Close approved heavy apps (browser, chat).
3. Enable Game Mode and a performance power plan if needed.
4. Raise game priority after launch.
5. Confirm free RAM is out of crash territory.

## Crash loop (`0x116`)

1. Pull BugCheck / Kernel-Power events and minidumps.
2. Prefer clean GPU driver install, browser hardware acceleration off, and a persistent GPU power cap task if heat or power is the story.
3. Escalate to dust clean, undervolt, or warranty only after the cheap steps fail.
