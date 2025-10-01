#> mindfullights:_/torches/main
#--------------------
# _/tick AS [torch]
#--------------------

scoreboard players remove @s mindfullights.burn_time 1

execute if score @s mindfullights.burn_time matches ..0 run return run function mindfullights:_/torch/burnout

execute as @s[tag=mindfullights.torch_normal] run function mindfullights:_/torch/normal/main
execute as @s[tag=mindfullights.torch_soul] run function mindfullights:_/torch/soul/main
execute as @s[tag=mindfullights.torch_copper] run function mindfullights:_/torch/copper/main

execute if score *var.torch.water_extinguish _mindfullights matches 1 if block ~ ~ ~ #mindfullights:_/is_water run return run function mindfullights:_/torch/extinguish
execute if score *var.torch.water_extinguish _mindfullights matches 1 if block ~ ~ ~ #six:minecraft/waterloggable[waterlogged=true] run return run function mindfullights:_/torch/extinguish

execute store result score @s mindfullights.light_level run function mindfullights:_/torch/calc_light
scoreboard players operation @s emissive.level = @s mindfullights.light_level
function emissive:emit