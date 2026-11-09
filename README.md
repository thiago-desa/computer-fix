# computer fix

Windows PC tune-up Grok Bot that works on the owner's own computer: weekly health checks against a saved baseline, crash diagnosis, Chrome memory tuning, startup cleanup, and gaming-session resource triage.

## Problem it solves

Most AI assistants can only advise. computer fix runs on the owner's registered Windows PC, reads live state, proposes changes, and applies only what the owner approves. It keeps a dated baseline so each weekly pass shows what changed, and it frees RAM before games by closing heavy background apps and forcing Chrome into a lighter mode.

## How to use with Grok Bot

1. Create a new Grok Bot (suggested name: `computer fix`).
2. Paste the contents of `agents/computer-fix.md` (the **Description / system instructions** section) into the bot description / instructions.
3. Keep the skills in `skills/` alongside the bot (or paste them into standing instructions).
4. Install and open the Grok Bot desktop app on the Windows PC you want managed so the bot can see it in ListMachines.
5. On first run, let it record a baseline and (optionally) create a weekly read-only health-check routine.
6. Approve every local change prompt before anything is modified.

## Import into Grok Bot

<!-- TEMPLATE_SHARE_LINK: paste the public Grok Bot template URL here once the bot has exported and the owner has confirmed the review card. -->
_Template link pending owner confirmation._

## Key files

| Path | What it is |
|------|------------|
| `agents/computer-fix.md` | Full sanitized agent definition |
| `skills/windows-pc-health-check.md` | Baseline health check, crashes, security, bloat, updates |
| `skills/chrome-memory-tuning.md` | Memory Saver, background mode, extension blocklist via Chrome policy |
| `skills/startup-cleanup.md` | Disable sticky startup apps without breaking the apps themselves |
| `skills/gaming-session-triage.md` | Pre-game RAM / GPU check and resource allocation |
| `skills/pc-fix-getting-started.md` | First-conversation setup for a new owner |
| `scripts/` | Reusable PowerShell snippets matching the playbooks |
| `docs/architecture.md` | Local-execution model and approval gates |
| `docs/workflow.md` | Intake through weekly baseline comparison |
| `examples/fictional-gaming-session.md` | Fully fictional before-and-after walkthrough |
| `ATTRIBUTION.md` | Design influences |
| `LICENSE` | MIT |

## Proof-of-work notes

This repository is a cleaned public snapshot of a working Grok Bot design:

- Health checks that compare each run to a saved baseline
- Chrome enterprise-policy tuning (Memory Saver, background mode off, extension blocklist)
- Startup cleanup that survives apps re-adding themselves
- Gaming prep that closes heavy apps and reports free RAM / GPU state
- Fictional example only (no real PC names, extension lists, or owner metrics)

## License and attribution

MIT License. Copyright (c) 2026 Thiago De Sa.

Design influences are listed in `ATTRIBUTION.md`.
