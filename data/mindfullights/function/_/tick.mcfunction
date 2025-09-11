#> mindfullights:_/tick
#--------------------
# @TICK
#--------------------
schedule function mindfullights:_/tick 1t

execute as @e[type=item,tag=!_mindfullights.checked,tag=!_] at @s run function mindfullights:_/check_item

execute as @e[type=item,tag=mindfullights.torch] at @s run function mindfullights:_/torch/main

execute as @a[gamemode=!spectator] at @s run function mindfullights:_/player/main