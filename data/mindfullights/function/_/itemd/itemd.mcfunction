#> mindfullights:_/itemd/itemd
#--------------------
# <!> itemd:itemd
#--------------------

execute unless items entity @s container.0 #mindfullights:_/itemd run return 0
execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return 0

execute if items entity @s container.0 minecraft:campfire run return run execute if score *cache.campfire.normal.start_unlit _mindfullights matches 1 run data merge entity @s {item:{components:{"minecraft:block_state":{lit:"false"}}}}
execute if items entity @s container.0 minecraft:soul_campfire run return run execute if score *cache.campfire.soul.start_unlit _mindfullights matches 1 run data merge entity @s {item:{components:{"minecraft:block_state":{lit:"false"}}}}

execute if items entity @s container.0 minecraft:torch run return run function mindfullights:_/itemd/torch
execute if items entity @s container.0 minecraft:soul_torch run return run function mindfullights:_/itemd/torch