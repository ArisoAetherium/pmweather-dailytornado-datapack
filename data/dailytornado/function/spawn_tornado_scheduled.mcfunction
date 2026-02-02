# Tornado strikes now (called when time of day reaches our random target)
# So we don't spawn again until next day
scoreboard players set #target daytime -1

# buildto fromStage fromEnergy windspeed width — start 2 25 200 30, max 2 99 400 500
# Tier by #tornadoDay tornadoDay (1 = initial … 21+ = max); linear ramp from initial to max
execute if score #tornadoDay tornadoDay matches 1 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 25 200 30
execute if score #tornadoDay tornadoDay matches 2 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 29 210 54
execute if score #tornadoDay tornadoDay matches 3 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 32 220 77
execute if score #tornadoDay tornadoDay matches 4 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 36 230 101
execute if score #tornadoDay tornadoDay matches 5 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 40 240 124
execute if score #tornadoDay tornadoDay matches 6 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 44 250 148
execute if score #tornadoDay tornadoDay matches 7 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 47 260 171
execute if score #tornadoDay tornadoDay matches 8 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 51 270 194
execute if score #tornadoDay tornadoDay matches 9 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 55 280 218
execute if score #tornadoDay tornadoDay matches 10 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 58 290 241
execute if score #tornadoDay tornadoDay matches 11 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 62 300 265
execute if score #tornadoDay tornadoDay matches 12 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 66 310 288
execute if score #tornadoDay tornadoDay matches 13 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 69 320 312
execute if score #tornadoDay tornadoDay matches 14 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 73 330 335
execute if score #tornadoDay tornadoDay matches 15 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 77 340 359
execute if score #tornadoDay tornadoDay matches 16 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 81 350 382
execute if score #tornadoDay tornadoDay matches 17 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 84 360 406
execute if score #tornadoDay tornadoDay matches 18 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 88 370 429
execute if score #tornadoDay tornadoDay matches 19 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 92 380 453
execute if score #tornadoDay tornadoDay matches 20 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 95 390 476
execute if score #tornadoDay tornadoDay matches 21.. run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 99 400 500

# Make the just-spawned tornado aim at the player (command only affects existing tornados)
execute run pmweather aimtoplayer all
