# Skill: Chrome memory tuning

Use when Chrome is the largest RAM consumer and the owner wants it lighter without losing their profile permanently.

## Approach

Chrome locks many settings against casual edits. The durable way is **Chrome enterprise policy under HKLM**, which survives restarts and fights extensions that re-enable themselves.

## Policies (Windows)

Under `HKLM:\SOFTWARE\Policies\Google\Chrome`:

| Policy | Typical value | Effect |
|--------|---------------|--------|
| `MemorySaverEnabled` or `HighEfficiencyModeEnabled` | `1` (DWORD) | Force Memory Saver / high-efficiency mode so idle tabs sleep |
| `BackgroundModeEnabled` | `0` (DWORD) | Stop Chrome running after the last window closes |
| `HardwareAccelerationModeEnabled` | `0` (DWORD) | Optional; try when chasing GPU TDR crashes tied to the browser |
| `ExtensionInstallBlocklist` | Multi-string of extension IDs | Blocks named extensions from running or reinstalling |

Apply with an elevated PowerShell snippet from `scripts/chrome-memory-policies.ps1`. Chrome must fully quit and relaunch for policies to take effect.

## Rules

- Ask which extensions to block. Never invent a blocklist from a private inventory in public examples.
- Leave wallet and authenticator extensions alone unless the owner names them.
- Report process count and working-set before and after a full Chrome restart.
- Guest windows load fewer extensions; mention that as a lighter option for a single site.
