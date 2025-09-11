#> mindfullights:_/player/main
#--------------------
# _/tick
#--------------------

clear @s *[minecraft:custom_data~{mindfullights:{torch:{burnt:true}}}]
execute store result score *x _mindfullights run clear @s *[minecraft:custom_data~{mindfullights:{torch:{burnt:false}}}]

execute unless score *x _mindfullights matches 1.. run return 0
execute store result storage mindfullights:_ x.count int 1 run scoreboard players get *x _mindfullights
function mindfullights:_/player/give_stick with storage mindfullights:_ x
