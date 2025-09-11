#> mindfullights:_/load
#--------------------
# @LOAD
#--------------------

scoreboard objectives add _mindfullights dummy

# mutable:
scoreboard objectives add mindfullights.burn_time dummy
scoreboard objectives add mindfullights.burnout_threshold dummy

# readonly:
scoreboard objectives add mindfullights.light_level dummy

scoreboard objectives add _mindfullights.max_light dummy
scoreboard objectives add _mindfullights.min_light dummy
scoreboard objectives add _mindfullights.light_range dummy
scoreboard objectives add _mindfullights.particles_a dummy
scoreboard objectives add _mindfullights.particles_b dummy

scoreboard players set *2 _mindfullights 2

# DEBUG
scoreboard players reset *init _mindfullights

execute unless score *init _mindfullights matches 1 run function mindfullights:_/init
scoreboard players set *init _mindfullights 1

function mindfullights:_/config_cache/do