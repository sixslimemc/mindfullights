#> mindfulp-lights:_/torches/soul/init
#--------------------
# _/check_item AS [unitialized soul_torch item]
#--------------------

tag @s add mindfulp-lights.torch_soul

# initial burn time / burnout
scoreboard players operation @s mindfulp-lights.burn_time = *cache.torch.soul.burn_time _mindfulp-lights
scoreboard players operation @s mindfulp-lights.burnout_threshold = *cache.torch.soul.burnout_threshold _mindfulp-lights

# additional burn time / burnout
execute store result score *x _mindfulp-lights run data get entity @s Item.count
scoreboard players remove *x _mindfulp-lights 1
scoreboard players operation *y _mindfulp-lights = *x _mindfulp-lights
scoreboard players operation *x _mindfulp-lights *= *cache.torch.soul.time_per_add _mindfulp-lights
scoreboard players operation *y _mindfulp-lights *= *cache.torch.soul.burnout_per_add _mindfulp-lights
scoreboard players operation @s mindfulp-lights.burn_time += *x _mindfulp-lights
scoreboard players operation @s mindfulp-lights.burnout_threshold += *y _mindfulp-lights

# particles scores
execute store result score @s _mindfulp-lights.particles_a run random value 2..50
execute store result score @s _mindfulp-lights.particles_b run random value 1..100

# set item
data merge entity @s {Item:{components:{"minecraft:custom_data":{_:true, __:true, mindfulp-lights:{torch:{type:"soul", burnt:false}}}, "minecraft:item_name":"Burning Soul Torch", "minecraft:rarity":"uncommon"}}}

function mindfulp-lights:_/torch/init

