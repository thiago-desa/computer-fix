# AGENTS.md

Short, high-signal instructions for coding agents working in `computer-fix`.

## What this repo is

Windows PC tune-up Grok Bot: baseline health checks, Chrome memory policies, startup cleanup, and gaming-session triage on the owner's machine.

This is a sanitized proof-of-work snapshot of a Grok Bot design. Markdown skills and docs are the product. There is no service binary to compile.

## Layout

| Path | Role |
|------|------|
| `agents/` | Sanitized agent definition |
| `skills/` | Health check, Chrome tuning, startup, gaming, getting started |
| `scripts/` | PowerShell helpers plus `check.py` hygiene |
| `docs/` | Architecture, workflow, failure modes |
| `evals/` | Golden set of fictional PC scenarios |
| `examples/` | Fictional gaming-session walkthrough |

## Commands

```bash
python scripts/check.py
```

PowerShell snippets under `scripts/` are meant for a Windows host the owner approves. Do not run destructive snippets in CI.

## Hard boundaries

- Never commit secrets, tokens, or `.env` files.
- Never publish real hostnames, account names, extension inventories, wallet extensions, or baseline metrics from a real PC.
- Never disable Defender or open inbound firewall holes.
- Never touch wallet extensions unless the owner names them and asks.
- Approval before deletes, policy changes, driver installs, or startup edits.
- No em dashes or en dashes in prose.

## Definition of done

- Skills and scripts stay aligned with `agents/computer-fix.md`.
- New behaviors have a golden-set case.
- `python scripts/check.py` passes.
- README Key files table updated; import link intact.

## Ownership

Maintained by Thiago De Sa. Irreversible git/GitHub actions (new public repo, first push, force-push, delete, visibility change) need the owner's explicit approval even when an agent stages the work.
