# Tornado strikes now (called when time of day reaches our random target)
tellraw @a {"text":"[Daily Tornado] Tornado incoming!","color":"yellow"}
# So we don't spawn again until next day
scoreboard players set #target daytime -1

# buildto fromStage fromEnergy windspeed width — windspeed in mph, width in meters (1 block = 1 m)
# fromEnergy ramps 1 (early days) to 50 (later days). Tier by #tornadoDay tornadoDay (1 … 21+ = max)
execute if score #tornadoDay tornadoDay matches 1 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 1 68 50
execute if score #tornadoDay tornadoDay matches 2 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 3 75 60
execute if score #tornadoDay tornadoDay matches 3 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 6 82 72
execute if score #tornadoDay tornadoDay matches 4 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 8 88 85
execute if score #tornadoDay tornadoDay matches 5 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 11 95 98
execute if score #tornadoDay tornadoDay matches 6 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 13 104 115
execute if score #tornadoDay tornadoDay matches 7 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 16 112 135
execute if score #tornadoDay tornadoDay matches 8 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 18 120 155
execute if score #tornadoDay tornadoDay matches 9 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 21 128 175
execute if score #tornadoDay tornadoDay matches 10 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 23 135 200
execute if score #tornadoDay tornadoDay matches 11 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 26 142 230
execute if score #tornadoDay tornadoDay matches 12 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 28 150 260
execute if score #tornadoDay tornadoDay matches 13 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 30 156 290
execute if score #tornadoDay tornadoDay matches 14 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 33 162 320
execute if score #tornadoDay tornadoDay matches 15 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 35 172 360
execute if score #tornadoDay tornadoDay matches 16 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 38 182 400
execute if score #tornadoDay tornadoDay matches 17 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 40 190 440
execute if score #tornadoDay tornadoDay matches 18 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 43 198 480
execute if score #tornadoDay tornadoDay matches 19 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 45 208 520
execute if score #tornadoDay tornadoDay matches 20 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 48 218 560
execute if score #tornadoDay tornadoDay matches 21.. run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 50 228 600

# Make the just-spawned tornado aim at the player (command only affects existing tornados)
execute run pmweather aimtoplayer all
