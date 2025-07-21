#> mindfulp-lights:_/check_item
#--------------------
# _/tick AS [unchecked item]
#--------------------

tag @s add _mindfulp-lights.checked

execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return 0

execute unless data entity @s Thrower run return 0
execute if items entity @s container.0 minecraft:torch run function mindfulp-lights:_/torch/normal/init
execute if items entity @s container.0 minecraft:soul_torch run function mindfulp-lights:_/torch/soul/init