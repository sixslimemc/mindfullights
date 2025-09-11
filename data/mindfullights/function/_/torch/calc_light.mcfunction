#> mindfullights:_/torches/calc_light
#--------------------
# ./main
#--------------------

# above burnout threshold
execute if score @s mindfullights.burn_time >= @s mindfullights.burnout_threshold run return run scoreboard players get *var.torch.max_light _mindfullights

# no brightness range
execute if score *var.torch.light_range _mindfullights matches 0 run return run scoreboard players get *var.torch.max_light _mindfullights

scoreboard players operation *x _mindfullights = @s mindfullights.burnout_threshold
scoreboard players operation *x _mindfullights /= *var.torch.light_range _mindfullights
scoreboard players operation *y _mindfullights = @s mindfullights.burn_time
scoreboard players operation *y _mindfullights /= *x _mindfullights
scoreboard players operation *y _mindfullights += *var.torch.min_light _mindfullights

execute if score *y _mindfullights > *var.torch.max_light _mindfullights run return run scoreboard players get *var.torch.max_light _mindfullights
return run scoreboard players get *y _mindfullights