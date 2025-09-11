#> mindfullights:_/torches/soul/init
#--------------------
# _/check_item AS [unitialized soul_torch item]
#--------------------

tag @s add mindfullights.torch_soul

# initial burn time / burnout
scoreboard players operation @s mindfullights.burn_time = *cache.torch.soul.burn_time _mindfullights
scoreboard players operation @s mindfullights.burnout_threshold = *cache.torch.soul.burnout_threshold _mindfullights

# additional burn time / burnout
execute store result score *x _mindfullights run data get entity @s Item.count
scoreboard players remove *x _mindfullights 1
scoreboard players operation *y _mindfullights = *x _mindfullights
scoreboard players operation *x _mindfullights *= *cache.torch.soul.time_per_add _mindfullights
scoreboard players operation *y _mindfullights *= *cache.torch.soul.burnout_per_add _mindfullights
scoreboard players operation @s mindfullights.burn_time += *x _mindfullights
scoreboard players operation @s mindfullights.burnout_threshold += *y _mindfullights

# particles scores
execute store result score @s _mindfullights.particles_a run random value 2..50
execute store result score @s _mindfullights.particles_b run random value 1..100

# set item
data merge entity @s {Item:{components:{"minecraft:custom_data":{_:true, __:true, mindfullights:{torch:{type:"soul", burnt:false}}}, "minecraft:item_name":"Burning Soul Torch", "minecraft:rarity":"uncommon"}}}

function mindfullights:_/torch/init

