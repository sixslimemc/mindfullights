#> mindfulp-lights:_/torches/normal/init
#--------------------
# _/check_item AS [unitialized torch item]
#--------------------

tag @s add mindfulp-lights.torch
tag @s add mindfulp-lights.torch_normal

# initial burn time / burnout
scoreboard players operation @s mindfulp-lights.burn_time = *cache.torch.normal.burn_time _mindfulp-lights
scoreboard players operation @s mindfulp-lights.burnout_threshold = *cache.torch.normal.burnout_threshold _mindfulp-lights

# additional burn time / burnout
execute store result score *x _mindfulp-lights run data get entity @s Item.count
scoreboard players remove *x _mindfulp-lights 1
scoreboard players operation *y _mindfulp-lights = *x _mindfulp-lights
scoreboard players operation *x _mindfulp-lights *= *cache.torch.normal.time_per_add _mindfulp-lights
scoreboard players operation *y _mindfulp-lights *= *cache.torch.normal.burnout_per_add _mindfulp-lights
scoreboard players operation @s mindfulp-lights.burn_time += *x _mindfulp-lights
scoreboard players operation @s mindfulp-lights.burnout_threshold += *y _mindfulp-lights

# set item
