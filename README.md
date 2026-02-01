# Daily Tornado

Spawns one ProtoManly tornado per in-game day, each stronger than the last.

## Requirements

- **Minecraft:** 1.21.1
- **Loader:** NeoForge 21.1.219
- **Mod:** [ProtoManly's Weather](https://www.curseforge.com/minecraft/mc-mods/promans-weather) — provides tornados and the `pmweather spawn tornado buildto` command used by this datapack

## Installation

1. Place the `daily_tornado` folder (the datapack root) inside your world's `datapacks` folder.
2. Either use **Datapacks** in the world creation or edit screen and add the pack, or copy the folder into `saves/<WorldName>/datapacks/`.
3. In-game: run `/reload` if the world is already loaded, or load the world so the datapack's load function runs.

## How it works

- **Per in-game day:** Exactly one tornado is scheduled per day using `time query day` and `time query daytime`. Works with normal time and `/time add`.
- **Random time:** At the start of each new day, a random time of day in 1–23999 is chosen so the tornado can occur at dawn, noon, dusk, or night.
- **Escalating strength:** Tornado strength is tiered by "tornado day" count (1st tornado, 2nd, …). The datapack uses 21 tiers: `pmweather spawn tornado buildto 2 90 <size> <strength>` with size from 150 (day 1) up to 400 (days 18+) and strength from 100 up to 900.
- **Spawn location:** The tornado is spawned at the nearest player.
- **Chat messages:**
  - Start of day: *"[Daily Tornado] A tornado will strike sometime today..."* (gray)
  - When the tornado triggers: *"[Daily Tornado] Tornado incoming!"* (yellow)

### Internal

The datapack hooks into `#minecraft:load` (runs `dailytornado:load`) and `#minecraft:tick` (runs `dailytornado:tick`). It uses four dummy scoreboard objectives — `day`, `lastDay`, `tornadoDay`, and `daytime` — to detect a new day, count tornado days, and compare current daytime to the random target so the tornado fires once per day.

## Credits

This datapack is designed for use with **ProtoManly's Weather**. Tornado behavior and the spawn command are provided by that mod.
