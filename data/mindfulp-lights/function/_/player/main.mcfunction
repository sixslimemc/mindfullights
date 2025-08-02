#> mindfulp-lights:_/player/main
#--------------------
# _/tick
#--------------------

clear @s *[minecraft:custom_data~{mindfulp-lights:{torch:{burnt:true}}}]
execute store result score *x _mindfulp-lights run clear @s *[minecraft:custom_data~{mindfulp-lights:{torch:{burnt:false}}}]

execute unless score *x _mindfulp-lights matches 1.. run return 0
execute store result storage mindfulp-lights:_ x.count int 1 run scoreboard players get *x _mindfulp-lights
function mindfulp-lights:_/player/give_stick with storage mindfulp-lights:_ x
