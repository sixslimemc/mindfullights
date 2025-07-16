#> mindfulp-lights:_/load
#--------------------
# @LOAD
#--------------------

scoreboard objectives add _mindfulp-lights dummy

# mutable:
scoreboard objectives add mindfulp-lights.burn_time dummy
scoreboard objectives add mindfulp-lights.burnout_threshold dummy

# readonly:
scoreboard objectives add mindfulp-lights.light_level dummy

scoreboard objectives add _mindfulp-lights.max_light dummy
scoreboard objectives add _mindfulp-lights.min_light dummy
scoreboard objectives add _mindfulp-lights.light_range dummy

# DEBUG
scoreboard players reset *init _mindfulp-lights

execute unless score *init _mindfulp-lights matches 1 run function mindfulp-lights:_/init
scoreboard players set *init _mindfulp-lights 1

function mindfulp-lights:_/config_cache/do