#> mindfulp-lights:_/init
#--------------------
# @LOAD
#--------------------

scoreboard objectives add _mindfulp-lights dummy

# DEBUG
scoreboard players reset *init _mindfulp-lights

execute unless score *init _mindfulp-lights matches 1 run function mindfulp-lights:_/init
scoreboard players set *init _mindfulp-lights 1

# config cache:
execute store result score *cc.campfire.normal.start_unlit _mindfulp-lights run data get storage mindfulp-lights:config campfire.normal.start_unlit
execute store result score *cc.campfire.soul.start_unlit _mindfulp-lights run data get storage mindfulp-lights:config campfire.soul.start_unlit