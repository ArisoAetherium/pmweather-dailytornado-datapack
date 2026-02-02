# Daily Tornado

Spawns one ProtoManly tornado per in-game day, each stronger than the last.

## Requirements

- **Minecraft:** 1.21.1
- **Loader:** NeoForge 21.1.219
- **Mod:** [ProtoManly's Weather](https://modrinth.com/mod/protomanlys-weather) — provides tornados and the `pmweather spawn tornado buildto` command used by this datapack

## Installation

1. Place the `daily_tornado` folder (the datapack root) inside your world's `datapacks` folder.
2. Either use **Datapacks** in the world creation or edit screen and add the pack, or copy the folder into `saves/<WorldName>/datapacks/`.
3. In-game: run `/reload` if the world is already loaded, or load the world so the datapack's load function runs.

## How it works

- **Per in-game day:** Exactly one tornado is scheduled per day using `time query day` and `time query daytime`. Works with normal time and `/time add`.
- **Random time:** At the start of each new day, a random time is chosen with **70% chance during the day** (daytime 1000–11000) and **30% at night** (13000–23000) so tornados are more likely in daylight.
- **Escalating strength:** Tornado strength is tiered by "tornado day" count (1st tornado, 2nd, …). The **initial** tornado is `buildto 2 25 200 30` (fromEnergy 25, windspeed 200 mph, width 30 m). Over 21 tiers it ramps to **max** `buildto 2 99 400 500` (fromEnergy 99, windspeed 400 mph, width 500 m). Command: `pmweather spawn tornado buildto fromStage fromEnergy windspeed width`.
- **Spawn location:** The tornado is spawned at the nearest player.
- **Aim at player:** After spawning, the datapack runs `pmweather aimtoplayer all` so the tornado (and any existing storms) aim at the player and move toward them. The mod's **Aim at Player Offset** (default 248 blocks in ProtoManly's Weather config) sets how far from the player storms aim for.
- **Chat messages:**
  - Start of day: *"[Aetherium Cloud Forecast]: Elevated convective potential and upper-level vorticity noted for your region. Isolated organized activity possible later today."* (gray)

### Internal

The datapack hooks into `#minecraft:load` (runs `dailytornado:load`) and `#minecraft:tick` (runs `dailytornado:tick`). It uses dummy scoreboard objectives — `day`, `lastDay`, `tornadoDay`, `daytime`, `roll` — to detect a new day, count tornado days, and compare current daytime to the random target so the tornado fires once per day.

## Credits

This datapack is designed for use with **ProtoManly's Weather**. Tornado behavior and the spawn command are provided by that mod.
