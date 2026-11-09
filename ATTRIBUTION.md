# Attribution

This proof-of-work repository documents a Grok Bot Windows PC tune-up design by Thiago De Sa (2026).

## Design influences (ideas, not code)

- Super-agent harness ideas often summarized as continuous, productive, proactive, and persistent agents, with watchdog-style scheduled health passes.
- Graph engineering / structured baseline comparison (dated snapshots, delta reporting) rather than one-off advice.
- Andrew Ng's AI Engineering skills framing: grounding in live machine state, evaluation-driven checks, and production hygiene (approval before change).

None of the above are copied as proprietary text or code.

## Technical references

Chrome enterprise policy names used in `scripts/` and `skills/chrome-memory-tuning.md` (`MemorySaverEnabled` / `HighEfficiencyModeEnabled`, `BackgroundModeEnabled`, `ExtensionInstallBlocklist`, `HardwareAccelerationModeEnabled`) are documented by Google for Chrome Browser Cloud Management and the Windows registry policy templates. PowerShell snippets here are original adaptations for a local agent workflow.

Windows Event Log sources (BugCheck 1001, Kernel-Power 41) and VIDEO_TDR_FAILURE (`0x116`) are Microsoft public documentation concepts.

## License

MIT License. Copyright (c) 2026 Thiago De Sa. See `LICENSE`.
