# Minecraft Bedrock – Multiplayer Fix

A simple batch script that fixes common multiplayer/online issues in **Minecraft Bedrock Edition** on Windows by restarting Xbox Game Services.

## Problem

Sometimes Minecraft Bedrock fails to connect to multiplayer sessions, friends' worlds, or Realms. This is often caused by Xbox Game Services not functioning correctly.

## What the Script Does

The script performs three steps:

| Step | Action |
|------|--------|
| **1/3** | Closes Minecraft Bedrock if it is currently running. |
| **2/3** | Stops Xbox Game Services (`GamingServices` and `GamingServicesNet`). |
| **3/3** | Waits a few seconds, restarts Xbox Game Services, and reopens Minecraft. |

## Requirements

- **Windows 10 / 11**
- **Minecraft Bedrock Edition** (Microsoft Store version)
- **Run as Administrator** – The script needs elevated privileges to stop and start system services.

## Usage

1. Right-click **Fix_Multiplayer.bat**.
2. Wait for the script to complete all three steps.
3. Minecraft will reopen automatically — try joining a multiplayer session again.

## Notes

- If Minecraft is not running when the script starts, it will simply skip the close step and continue.
- The script is safe to run multiple times.
- No files or game data are modified — it only restarts services.

## License

Free to use and modify.

