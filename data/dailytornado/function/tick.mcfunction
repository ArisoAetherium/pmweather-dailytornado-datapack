execute store result score #day day run time query day
# Copy lastDay into "day" objective so we can compare #day day > #lastDay day (same objective)
execute store result score #lastDay day run scoreboard players get #lastDay lastDay

# New day: schedule tornado for a random time of day (so /time add advances toward it)
execute if score #day day > #lastDay day run tellraw @a {"text":"[Aetherium Cloud Forecast]: Elevated convective potential and upper-level vorticity noted for your region. Isolated organized activity possible later today.","color":"gray"}
execute if score #day day > #lastDay day run function dailytornado:on_new_day

# Time-of-day check: when current time of day reaches our random target, spawn the tornado
execute store result score #current daytime run time query daytime
execute if score #target daytime matches 0.. run execute if score #current daytime >= #target daytime run function dailytornado:spawn_tornado_scheduled
