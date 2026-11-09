# Architecture

computer fix is a local-execution Windows tune-up bot. It does not stop at advice: it reads the owner's registered PC, proposes changes, and applies only approved steps.

## Goals

1. Keep a durable health baseline and show deltas each week
2. Free RAM and stabilize the GPU path before gaming
3. Make Chrome and sticky startup apps behave without fighting the owner every reboot
4. Diagnose crashes from Event Log evidence, not guesses

## Local execution model

- The Grok Bot desktop app must be open on the target Windows PC so the bot can select it via ListMachines and run approved shell commands there.
- Read-only commands run first. Changes (policies, startup, uninstalls, driver work) wait for approval.
- Standing weekly routines are read-only by default.

## Skills as narrow playbooks

| Skill | Concern |
|-------|---------|
| windows-pc-health-check | Baseline, crashes, Defender, bloat, disk, updates |
| chrome-memory-tuning | HKLM Chrome policies for Memory Saver and blocklists |
| startup-cleanup | Disable sticky StartupApproved entries |
| gaming-session-triage | Pre-game resource allocation |
| pc-fix-getting-started | First-run questions and weekly routine |

## Approval and privacy

- Wallet extensions and other owner-marked untouchables stay off limits.
- Public proof-of-work materials use fictional hostnames and invented metrics only.
- Never commit real baselines, extension inventories, or account paths.

## What this repo is

A public-ready snapshot of the agent definition, skills, PowerShell helpers, workflow docs, and a fictional example. It is not a dump of anyone's live PC state.
