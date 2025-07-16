#> mindfulp-lights:_/torches/init
#--------------------
# ./normal/init
# ./soul/init
#--------------------
# called AFTER typed inits

tag @s add mindfulp-lights.torch
tag @s add _

# account for first tick
scoreboard players add @s mindfulp-lights.burn_time 1