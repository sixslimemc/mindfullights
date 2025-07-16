#> mindfulp-lights:_/load
#--------------------
# @LOAD
#--------------------

scoreboard objectives add _mindfulp-lights dummy
scoreboard objectives add mindfulp-lights.burn_time dummy
scoreboard objectives add mindfulp-lights.burnout_threshold dummy

# DEBUG
scoreboard players reset *init _mindfulp-lights

execute unless score *init _mindfulp-lights matches 1 run function mindfulp-lights:_/init
scoreboard players set *init _mindfulp-lights 1

function mindfulp-lights:_/config_cache/do