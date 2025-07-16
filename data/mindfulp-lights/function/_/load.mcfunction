#> mindfulp-lights:_/init
#--------------------
# @LOAD
#--------------------

scoreboard objectives add _mindfulp-lights dummy

execute unless score *init _mindfulp-lights matches 1 run function mindfulp-lights:_/init
scoreboard players set *init _mindfulp-lights 1
