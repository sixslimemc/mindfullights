#> mindfulp-lights:_/torches/init
#--------------------
# ./normal/init
# ./soul/init
#--------------------
# called AFTER typed inits

tag @s add mindfulp-lights.torch
tag @s add _
tag @s add __

# account for first tick
scoreboard players add @s mindfulp-lights.burn_time 1

data merge entity @s {Age:-32768}
data merge entity @s {PickupDelay:32767}