#> mindfullights:_/check_item
#--------------------
# _/tick AS [unchecked item]
#--------------------

tag @s add _mindfullights.checked

execute unless items entity @s container.0 #mindfullights:_/torches run return 0
execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return 0

execute unless data entity @s Thrower run return 0
execute if items entity @s container.0 minecraft:torch run function mindfullights:_/torch/normal/init
execute if items entity @s container.0 minecraft:soul_torch run function mindfullights:_/torch/soul/init
execute if items entity @s container.0 minecraft:copper_torch run function mindfullights:_/torch/copper/init