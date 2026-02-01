# Tornado strikes now (called when time of day reaches our random target)
tellraw @a {"text":"[Daily Tornado] Tornado incoming!","color":"yellow"}
# So we don't spawn again until next day
scoreboard players set #target daytime -1

# Spawn at tier based on #tornadoDay tornadoDay (1 = first tornado, 2 = second, ... 20+ = max)
execute if score #tornadoDay tornadoDay matches 1 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 150 100
execute if score #tornadoDay tornadoDay matches 2 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 165 150
execute if score #tornadoDay tornadoDay matches 3 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 180 200
execute if score #tornadoDay tornadoDay matches 4 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 195 250
execute if score #tornadoDay tornadoDay matches 5 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 210 300
execute if score #tornadoDay tornadoDay matches 6 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 225 350
execute if score #tornadoDay tornadoDay matches 7 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 240 400
execute if score #tornadoDay tornadoDay matches 8 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 255 450
execute if score #tornadoDay tornadoDay matches 9 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 270 500
execute if score #tornadoDay tornadoDay matches 10 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 285 550
execute if score #tornadoDay tornadoDay matches 11 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 300 600
execute if score #tornadoDay tornadoDay matches 12 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 315 650
execute if score #tornadoDay tornadoDay matches 13 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 330 700
execute if score #tornadoDay tornadoDay matches 14 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 345 750
execute if score #tornadoDay tornadoDay matches 15 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 360 800
execute if score #tornadoDay tornadoDay matches 16 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 375 850
execute if score #tornadoDay tornadoDay matches 17 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 390 900
execute if score #tornadoDay tornadoDay matches 18 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 400 900
execute if score #tornadoDay tornadoDay matches 19 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 400 900
execute if score #tornadoDay tornadoDay matches 20 run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 400 900
execute if score #tornadoDay tornadoDay matches 21.. run execute as @a[limit=1,sort=nearest] run pmweather spawn tornado buildto 2 90 400 900
