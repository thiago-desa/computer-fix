# Skill: Startup cleanup

Use when boot feels slow or many apps launch uninvited.

## Approach

1. List startup apps (Task Manager Startup apps, Run / RunOnce keys, Startup folder, and relevant Scheduled Tasks).
2. Propose a disable set. Prefer launchers and sync helpers the owner opens manually (game launchers, secondary browsers, PDF sync).
3. Disable via the StartupApproved registry pattern or `Disable-ScheduledTask` as appropriate. Apps still work when opened by hand.
4. For sticky apps that re-add themselves (chat clients are common), re-clear their startup entry and, if needed, block the auto-start path the app uses.
5. Re-check after the next reboot or in the weekly health pass.

## Rules

- Do not disable security software, GPU control panels the owner relies on, or audio drivers without asking.
- Say clearly what was disabled and how to turn any item back on.
