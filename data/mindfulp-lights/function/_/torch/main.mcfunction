#> mindfulp-lights:_/torches/main
#--------------------
# _/tick AS [torch]
#--------------------



execute as @s[tag=mindfulp-lights.torch_normal] run function mindfulp-lights:_/torch/normal/main
execute as @s[tag=mindfulp-lights.torch_soul] run function mindfulp-lights:_/torch/soul/main

scoreboard players remove @s mindfulp-lights.burn_time 1