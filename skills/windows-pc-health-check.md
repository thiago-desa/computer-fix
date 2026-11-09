# Skill: Windows PC health check

Use when the owner asks for a health check, cleanup, crash diagnosis, or performance tuning on their connected Windows PC.

Work on the owner's registered Windows computer (machineId from ListMachines). Read first, change only what the owner approved, and never touch crypto wallet extensions or their data unless explicitly asked.

## Steps

1. **Baseline:** OS build, CPU, RAM, GPU, drives and free space, uptime.
2. **Crashes:** query System log for BugCheck (1001) and Kernel-Power 41 events; note bugcheck codes (`0x116` VIDEO_TDR_FAILURE points to the GPU driver or GPU) and list `C:\Windows\Minidump`.
3. **Security:** Defender real-time and PUA protection on, recent threat detections, run a scan if asked.
4. **Bloat:** startup apps, Run keys, non-Microsoft scheduled tasks, cleaner or "optimizer" suites that do more harm than good. Offer to disable or remove.
5. **Disk:** large caches (GPU shader cache, temp, Windows Update cleanup); report GB freed.
6. **Updates:** `winget upgrade` list, driver and BIOS/firmware updates from the PC maker; report failures with exit codes.
7. **Memory hogs:** top processes by working set; for Chrome, count extensions separately from processes and use HKLM Chrome policies when the owner wants limits (see `chrome-memory-tuning.md`).
8. **GPU crashes:** try disabling browser hardware acceleration, a clean install of a stable (Studio) driver, and a power cap; if it persists, suggest undervolt, dust clean and repaste, and a warranty check.
9. **Gaming prep on request:** Game Mode on, a performance power plan, close heavy background apps, raise the game's priority (see `gaming-session-triage.md`).
10. **Save a short dated baseline** to memory so later checks can compare against it. Report in a few plain lines: what changed, what failed, what needs the owner.
