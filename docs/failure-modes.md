# Failure modes and troubleshooting

## Local execution failures

| Failure | What it looks like | What to do |
|---------|--------------------|------------|
| PC offline | ListMachines empty / shell cannot reach host | Ask owner to open the desktop app; defer weekly check |
| Invented metrics | Free RAM or BugCheck codes without a command | Re-read live state; show command + exit code |
| Partial policy apply | Chrome policy set HKCU but HKLM denied | Report which hive failed; do not claim success |
| Startup app returns | App re-registers run key after cleanup | Re-apply disable; document sticky apps in private memory only |

## Safety failures

| Failure | What it looks like | What to do |
|---------|--------------------|------------|
| Change without approval | Startup disable or policy edit applied early | Hard stop; restore approval gate |
| Wallet extension risk | Any action near crypto wallets | Leave untouched unless owner names them |
| Defender disabled | Suggestion to turn off AV | Refuse |
| Gaming over-close | Closing apps the owner still needs | Confirm list before kill; prefer browser/chat defaults |

## Recovery (design)

Weekly baseline comparison is the watchdog. Failed commands are logged with exit codes. BIOS or Safe Mode steps stay owner-attended; the bot prepares scripts and waits.
