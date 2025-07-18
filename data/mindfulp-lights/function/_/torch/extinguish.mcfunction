#> mindfulp-lights:_/torches/extinguish
#--------------------
# ./main
#--------------------

scoreboard players set @s emissive.level 0
function emissive:emit

playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.2 2
particle smoke ~ ~0.5 ~ 0.05 0.05 0.05 0.01 3

# stick salvage calculation
execute store result score *var.torch.count _mindfulp-lights run data get entity @s Item.count
scoreboard players operation *x _mindfulp-lights = @s mindfulp-lights.burnout_threshold
scoreboard players operation *x _mindfulp-lights /= *var.torch.count _mindfulp-lights
scoreboard players operation *y _mindfulp-lights = @s mindfulp-lights.burn_time
scoreboard players operation *y _mindfulp-lights /= *x _mindfulp-lights
execute if score *y _mindfulp-lights < *var.torch.count _mindfulp-lights run scoreboard players operation *var.torch.count _mindfulp-lights = *y _mindfulp-lights

execute if score *var.torch.count _mindfulp-lights matches ..0 run return run kill @s

execute store result storage mindfulp-lights:_ x.count int 1 run scoreboard players get *var.torch.count _mindfulp-lights
data modify storage mindfulp-lights:_ x.motion set from entity @s Motion
function mindfulp-lights:_/torch/stick with storage mindfulp-lights:_ x

kill @s