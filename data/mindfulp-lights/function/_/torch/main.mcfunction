#> mindfulp-lights:_/torches/main
#--------------------
# _/tick AS [torch]
#--------------------

scoreboard players remove @s mindfulp-lights.burn_time 1

# DEBUG
execute if score @s mindfulp-lights.burn_time matches ..0 run return run kill @s

execute as @s[tag=mindfulp-lights.torch_normal] run function mindfulp-lights:_/torch/normal/main
execute as @s[tag=mindfulp-lights.torch_soul] run function mindfulp-lights:_/torch/soul/main

execute if score *var.torch.water_extinguish _mindfulp-lights matches 1 if block ~ ~ ~ water

execute store result score @s mindfulp-lights.light_level run function mindfulp-lights:_/torch/calc_light
scoreboard players operation @s emissive.level = @s mindfulp-lights.light_level
function emissive:emit