#> mindfulp-lights:_/tick
#--------------------
# @TICK
#--------------------

execute as @e[type=item,tag=!_mindfulp-lights.checked,tag=!_] at @s run function mindfulp-lights:_/check_item

execute as @e[type=item,tag=mindfulp-lights.torch] at @s run function mindfulp-lights:_/torch/main