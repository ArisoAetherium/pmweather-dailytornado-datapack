# Update last day and tornado count
scoreboard players operation #lastDay lastDay = #day day
scoreboard players add #tornadoDay tornadoDay 1
# 70% day (1000-11000), 30% night (13000-23000); roll 0-99 then pick range
execute as @a[limit=1] store result score #roll roll run random value 0..99
execute if score #roll roll matches 0..69 run execute as @a[limit=1] store result score #target daytime run random value 1000..11000
execute if score #roll roll matches 70..99 run execute as @a[limit=1] store result score #target daytime run random value 13000..23000
