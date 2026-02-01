# Update last day and tornado count
scoreboard players operation #lastDay lastDay = #day day
scoreboard players add #tornadoDay tornadoDay 1
# Random time of day (1-23999) when tornado will strike; /time add will advance toward this
execute as @a[limit=1] store result score #target daytime run random value 1..23999
