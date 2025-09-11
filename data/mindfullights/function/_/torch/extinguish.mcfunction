#> mindfullights:_/torches/extinguish
#--------------------
# ./main
#--------------------

scoreboard players set @s emissive.level 0
function emissive:emit

playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.2 2
particle smoke ~ ~0.5 ~ 0.05 0.05 0.05 0.01 3

# stick salvage calculation
execute store result score *var.torch.count _mindfullights run data get entity @s Item.count
scoreboard players operation *x _mindfullights = @s mindfullights.burnout_threshold
scoreboard players operation *x _mindfullights /= *var.torch.count _mindfullights
scoreboard players operation *y _mindfullights = @s mindfullights.burn_time
scoreboard players operation *y _mindfullights /= *x _mindfullights
execute if score *y _mindfullights < *var.torch.count _mindfullights run scoreboard players operation *var.torch.count _mindfullights = *y _mindfullights

execute if score *var.torch.count _mindfullights matches ..0 run return run kill @s

execute store result storage mindfullights:_ x.count int 1 run scoreboard players get *var.torch.count _mindfullights
data modify storage mindfullights:_ x.motion set from entity @s Motion
function mindfullights:_/torch/stick with storage mindfullights:_ x

kill @s