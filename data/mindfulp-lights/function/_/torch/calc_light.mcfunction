#> mindfulp-lights:_/torches/calc_light
#--------------------
# ./main
#--------------------

# above burnout threshold
execute if score @s mindfulp-lights.burn_time > @s mindfulp-lights.burnout_threshold run return run scoreboard players get *var.torch.max_light _mindfulp-lights


