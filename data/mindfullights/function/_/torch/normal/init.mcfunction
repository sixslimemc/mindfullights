#> mindfullights:_/torches/normal/init
#--------------------
# _/check_item AS [unitialized torch item]
#--------------------

tag @s add mindfullights.torch_normal

# initial burn time / burnout
scoreboard players operation @s mindfullights.burn_time = *cache.torch.normal.burn_time _mindfullights
scoreboard players operation @s mindfullights.burnout_threshold = *cache.torch.normal.burnout_threshold _mindfullights

# additional burn time / burnout
execute store result score *x _mindfullights run data get entity @s Item.count
scoreboard players remove *x _mindfullights 1
scoreboard players operation *y _mindfullights = *x _mindfullights
scoreboard players operation *x _mindfullights *= *cache.torch.normal.time_per_add _mindfullights
scoreboard players operation *y _mindfullights *= *cache.torch.normal.burnout_per_add _mindfullights
scoreboard players operation @s mindfullights.burn_time += *x _mindfullights
scoreboard players operation @s mindfullights.burnout_threshold += *y _mindfullights

# particles scores
execute store result score @s _mindfullights.particles_a run random value 2..10
execute store result score @s _mindfullights.particles_b run random value 2..10

# set item
data merge entity @s {Item:{components:{"minecraft:custom_data":{_:true, __:true, mindfullights:{torch:{type:"normal", burnt:false}}}, "minecraft:item_name":"Burning Torch", "minecraft:rarity":"uncommon"}}}

function mindfullights:_/torch/init
