scoreboard objectives add day dummy
scoreboard objectives add lastDay dummy
scoreboard objectives add tornadoDay dummy
scoreboard objectives add daytime dummy
scoreboard objectives add roll dummy
# Store current day so first tick doesn't trigger; we use "day" objective for comparison
execute store result score #day day run time query day
execute store result score #lastDay lastDay run time query day
# -1 = no tornado scheduled this day
scoreboard players set #target daytime -1

# Enable Aim at Player so storms/tornados aim at the player (optional; also run after each spawn)
execute run pmweather aimtoplayer all
