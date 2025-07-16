#> mindfulp-lights:_/torches/calc_light
#--------------------
# ./main
#--------------------

# above burnout threshold
execute if score @s mindfulp-lights.burn_time > @s mindfulp-lights.burnout_threshold run return run scoreboard players get *var.torch.max_light _mindfulp-lights

# no brightness range
execute if score *var.torch.light_range _mindfulp-lights matches 0 run return run scoreboard players get *var.torch.max_light _mindfulp-lights

scoreboard players operation *x _mindfulp-lights = @s mindfulp-lights.burnout_threshold
scoreboard players operation *x _mindfulp-lights /= *var.torch.light_range _mindfulp-lights
scoreboard players operation *y _mindfulp-lights = @s mindfulp-lights.burn_time
scoreboard players operation *y _mindfulp-lights /= *x _mindfulp-lights

return run scoreboard players operation *y _mindfulp-lights += *var.torch.min_light _mindfulp-lights

